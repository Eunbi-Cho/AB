//
//  ContentView.swift
//  AB
//
//  Created by ์กฐ์๋น on 2022/04/28.
//

import SwiftUI


struct ContentView: View {
    @State var showReason:Bool = false
    @State var Selected = ""
    @Binding var tests: [Tests]
    @Binding var indexOfStep:Int
    
    var body: some View {
        ZStack {
            Color("Gray")
                .ignoresSafeArea()
            if indexOfStep > tests.count - 1 {
                VStack {
                    Text("๐๐ป")
                        .font(.system(size:100))
                        .padding(.bottom, 10.0)
                    Text("๋ชจ๋  ํ์คํธ๋ฅผ ์๋ฃํ์ด์.")
                        .padding(.bottom, 5.0)
                    Text("์๋ก์ด ํ์คํธ๋ฅผ ๋ง๋ค์ด๋ณด์ธ์!")
                }
            }else {
                VStack {
                    Text("\(tests[indexOfStep].question)")
                        .font(.title3)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 40)
                        .padding(.bottom, 10)
                    Divider()
                        .frame(width:350)
                        .background(.black)
                        .opacity(0.2)
                        .padding(.bottom, 10.0)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            Spacer()
                                .frame(width: 60.0)
                            VStack {
                                Button (action: {
                                    showReason.toggle()
                                    Selected = "A"
                                }) {
                                    tests[indexOfStep].ImageA
                                        .resizable()
                                        .frame(width: 260, height: 560)
                                        .scaledToFit()
                                        .cornerRadius(10)
                                        .shadow(color: .gray, radius: 4, x: 0, y: 2)
                                }
                            }
                            Spacer()
                                .frame(width: 20.0)
                            VStack {
                                Button (action: {
                                    showReason.toggle()
                                    Selected = "B"
                                }) {
                                    tests[indexOfStep].ImageB
                                        .resizable()
                                        .frame(width: 260, height: 560)
                                        .scaledToFit()
                                        .cornerRadius(10)
                                        .shadow(color: .gray, radius: 4, x: 0, y: 2)
                                }
                            }
                            Spacer()
                                .frame(width: 60.0)
                        }
                        .frame(height: 600)
                    }
                    Spacer()
                }
                .sheet(isPresented: $showReason) {
                    ReasonView(Selected: $Selected, showReason:$showReason, tests: $tests, indexOfStep: $indexOfStep)
                }
            }
        }
        
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
