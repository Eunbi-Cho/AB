//
//  ReasonView.swift
//  AB
//
//  Created by 조은비 on 2022/05/02.
//

import SwiftUI


struct ReasonView: View {
    @State var placeholderText: String = "ex) 할인을 알려줘 구매를 유도하기 때문에"
    @State var reason = ""
    @Binding var Selected: String
    @Binding var showReason:Bool
    @Binding var tests: [Tests]
    @Binding var indexOfStep: Int
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color("Gray")
                .ignoresSafeArea()
            NavigationView {
                VStack {
                    HStack {
                        Button( action:
                                    {presentationMode.wrappedValue.dismiss()
                        }){
                            Text("취소")
                                .foregroundColor(.black)
                        }.padding(.leading, 20.0)
                        Spacer()
                    }
                    .padding(.top, 20.0)
                    Spacer()
                        .frame(height: 20.0)
                    HStack {
                        Text("\(Selected)")
                            .font(.title2)
                            .fontWeight(.black)
                            .foregroundColor(Color("\(Selected)"))
                        Text("를 선택한 이유")
                            .font(.title2)
                            .fontWeight(.black)
                        Spacer()
                        NavigationLink(destination: CommentView(Selected:$Selected, showReason:$showReason, reason: $reason, tests: $tests, indexOfStep: $indexOfStep).navigationBarHidden(true)
                        ) {
                            Image(systemName: "arrow.up.circle.fill")
                                .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                                .foregroundColor(.black)
                                .frame(width: 30, height: 30)
                        }
                    }
                    .padding([.leading, .bottom, .trailing], 20.0)
                    ZStack {
                        if self.reason.isEmpty {
                            TextEditor(text: $placeholderText)
                                .foregroundColor(.gray)
                                .disabled(true)
                                .padding(.horizontal, 20.0)
                        }
                        TextEditor(text: $reason)
                            .opacity(self.reason.isEmpty ? 0.25 : 1)
                            .padding(.horizontal, 20.0)
                    }
                    if indexOfStep > tests.count - 1 {
                        
                    }else {
                        HStack {
                            Spacer()
                            tests[indexOfStep].ImageA
                                .resizable()
                                .frame(width: 130/1.2, height: 280/1.2)
                                .scaledToFit()
                                .shadow(color: .gray, radius: 1, x: 0, y: 1)
                            
                            tests[indexOfStep].ImageB
                                .resizable()
                                .frame(width: 130/1.2, height: 280/1.2)
                                .scaledToFit()
                                .shadow(color: .gray, radius: 1, x: 0, y: 1)
                            Spacer()
                                .frame(width:20)
                        }
                        .padding(.bottom, 20.0)
                    }
                }
                .navigationBarHidden(true)
            }
        }
    }
}

//
//struct ReasonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ReasonView(showReason:$showReason)
//    }
//}
