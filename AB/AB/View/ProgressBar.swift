//
//  ProgressBar.swift
//  AB
//
//  Created by 조은비 on 2022/05/02.
//

import SwiftUI

struct MySquare: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: 10, y: 0))
        path.addLine(to: CGPoint(x:5, y: 10))
        path.addLine(to: CGPoint(x: 0, y: 10))
        path.addLine(to: CGPoint(x: 0, y: 0))
        path.closeSubpath()
        
        return path
    }
}

struct ProgressBar: View {
    @Binding var value: Float
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: geometry.size.width , height: geometry.size.height)
                    .foregroundColor(Color("B"))
                    .cornerRadius(10)
                HStack {
                    Rectangle()
                        .frame(width: min(CGFloat(self.value)*geometry.size.width, geometry.size.width), height: geometry.size.height)
                        .foregroundColor(Color("A"))
                        .cornerRadius(10)
                    MySquare()
                        .padding(.leading, -10.0)
                        .foregroundColor(Color("A"))
                    }
                }
            }
    }
}

//struct ProgressBar_Previews: PreviewProvider {
//    static var previews: some View {
//        ProgressBar(self.$value)
//    }
//}
