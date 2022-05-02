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
                        .foregroundColor(Color("MainRed"))
                }.padding(.leading, 20.0)
                Spacer()
            }
            .padding(.top, 40.0)
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
                Image(systemName: "arrow.up.circle.fill")
                    .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                    .foregroundColor(Color("MainRed"))
                    .frame(width: 30, height: 30)
            }
            .padding([.leading, .bottom, .trailing], 20.0)
            TextField("ex) 연속성의 원리에 따라 같은 방향성을 지녀야 함", text: $reason)
                .padding(.leading, 20.0)
            Spacer()
            HStack {
                Spacer()
                Image("kurly")
                    .resizable()
                    .frame(width: 130/1.2, height: 280/1.2)
                    .scaledToFit()
                    .cornerRadius(10)
                    .shadow(color: .gray, radius: 1, x: 0, y: 1)
                    
                Image("musinsa")
                
                    .resizable()
                    .frame(width: 130/1.2, height: 280/1.2)
                    .scaledToFit()
                    .cornerRadius(10)
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
