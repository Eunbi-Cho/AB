//
//  ReasonView.swift
//  AB
//
//  Created by 조은비 on 2022/05/02.
//

import SwiftUI


struct ReasonView: View {
    @State var reason = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            HStack {
                Button( action:
                        {presentationMode.wrappedValue.dismiss()
                }){
                    Text("취소")
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                }.padding(.leading, 20.0)
                Spacer()
            }
            .padding(.top, 20.0)
            Spacer()
                .frame(height: 20.0)
            HStack {
                Text("A")
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundColor(Color("MainRed"))
                Text("를 선택한 이유")
                    .font(.title2)
                    .fontWeight(.black)
                Spacer()
                Button(action:
                            { //action
                }) {
                Image(systemName: "arrow.up.circle.fill")
                    .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                    .foregroundColor(.black)
                    .frame(width: 30, height: 30)
                }
            }
            .padding([.leading, .bottom, .trailing], 20.0)
//            if reason.isEmpty {
//                Text("근거")
//                    .foregroundColor(.gray)
//                    .multilineTextAlignment(.leading)
            TextEditor(text: $reason)
                .padding(.leading, 20.0)
            }
            Spacer()
            
            HStack {
                Spacer()
                Image("kurly")
                    .resizable()
                    .frame(width: 130/1.2, height: 280/1.2)
                    .scaledToFit()
                    .shadow(color: .gray, radius: 1, x: 0, y: 1)
//                    .border(Color("MainRed"))
                    
                Image("musinsa")
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
}

struct ReasonView_Previews: PreviewProvider {
    static var previews: some View {
        ReasonView()
    }
}
