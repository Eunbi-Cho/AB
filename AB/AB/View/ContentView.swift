//
//  ContentView.swift
//  AB
//
//  Created by 조은비 on 2022/04/28.
//

import SwiftUI

//struct PresentationKey: EnvironmentKey {
//    static let defaultValue: [Binding<Bool>] = []
//}

//extension EnvironmentValues {
//    var presentationMode: [Binding<Bool>] {
//        get { return self[PresentationKey] }
//        set { self[PresentationKey] = newValue }
//    }
//}

struct ContentView: View {
    @State var showReason:Bool = false
    @State var Selected = ""
    //@State var tests: [Tests] = [Tests(question: "어떤 UI가 더 유저 친화적인가요?", ImageA: Image("kurly"), ImageB: Image("musinsa"))]
    @Binding var tests: [Tests]
    @Binding var indexOfStep:Int
//    extension EnvironmentValues {
//        var presentationMode: [Binding<Bool>] {
//            get { return self[PresentationKey] }
//            set { self[PresentationKey] = newValue }
//        }
//    }
    
    
    
    var body: some View {
        ZStack {
            Color("Gray")
                .ignoresSafeArea()
//            ForEach(0..<tests.count, id: \.self) { i in
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
                                //                            Text("A")
                                //                                .font(.largeTitle)
                                //                                .fontWeight(.bold)
                                //                                .padding(.bottom, -3.0)
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
                                //                            Text("B")
                                //                                .font(.largeTitle)
                                //                                .fontWeight(.bold)
                                //                                .padding(.bottom, -3.0)
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
//            }
            .sheet(isPresented: $showReason) {
                ReasonView(Selected: $Selected, showReason:$showReason, tests: $tests, indexOfStep: $indexOfStep)
//                    .environment(\.presentations, presentationMode + [$showReason])
            }
        }
        
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
