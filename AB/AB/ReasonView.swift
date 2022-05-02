//
//  ReasonView.swift
//  AB
//
//  Created by 조은비 on 2022/05/02.
//

import SwiftUI


struct ReasonView: View {
    @State var showReason = false
    
    var body: some View {
        
        VStack {
            HStack {
                Button("취소") {
                    showReason = false
                }
                .padding([.top, .leading], 20.0)
                .foregroundColor(Color("MainRed"))
                Spacer()
            }
            Spacer()
                .frame(height: 20.0)
            HStack {
                Text("A")
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundColor(Color("MainRed"))
                    .padding(.leading, 20.0)
                Text("를 선택한 이유")
                    .font(.title2)
                    .fontWeight(.black)
                Spacer()
                Image(systemName: "arrow.up.circle.fill")
                    .foregroundColor(Color("MainRed"))
                    .padding(.trailing, 20.0)
                frame(width: 30, height: 30)
            }
            .padding(.bottom, 20.0)
            Spacer()
            
        }
    }
}

struct ReasonView_Previews: PreviewProvider {
    static var previews: some View {
        ReasonView()
    }
}
