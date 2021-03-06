//
//  AddView.swift
//  AB
//
//  Created by 조은비 on 2022/04/29.
//

import SwiftUI

struct SUImagePicker: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = UIImagePickerController
    
    @Environment(\.presentationMode)
    private var presentationMode // 해당 뷰컨트롤러의 노출 여부
    let sourceType: UIImagePickerController.SourceType
    let imagePicked: (UIImage) -> () // 이미지가 선택됐을때 결과 호출

    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        
        let parent: SUImagePicker
    
        init(parent: SUImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.originalImage] as? UIImage {
                parent.imagePicked(image)
                parent.presentationMode.wrappedValue.dismiss()
            }
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
    }

}


struct AddView: View {
    @State var placeholder: String = "ex) 어떤 디자인이 더 유저 친화적인가요?"
    @State var question = ""
    @State var pickedImageA: Image?
    @State var pickedImageB: Image?
    @State var comment = ""
    @State private var showingImagePickerA = false
    @State private var showingImagePickerB = false
    @Binding var tests: [Tests]
    
    func appendTest() {
        let addTest = Tests(question: question, ImageA: pickedImageA!, ImageB: pickedImageB!, comment: [""] )
        tests.append(addTest)
        question = ""
        pickedImageA = nil
        pickedImageB = nil
    }

    var body: some View {
        ZStack {
            Color("Gray")
                .ignoresSafeArea()
            VStack {
//                HStack {
//                    Spacer()
//                    Button(action: {
//                        //action
//                    }) {
//                        Text("등록")
//                            .foregroundColor(.black)
//                    }
//                    .padding(.trailing, 20.0)
//                }
//                .padding(.top, 20)
                HStack {
                    Text("테스트 질문")
                        .font(.title3)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 20.0)
                        .padding(.top, 40)
                    Spacer()
                }
                .padding(.bottom, 20.0)
                TextField("ex) 어떤 디자인이 더 유저 친화적인가요?", text: $question)
                    .padding([.top, .leading, .bottom], 20.0)
                    .background(Color(.white))
                    .frame(width: 350)
                    .cornerRadius(10)
    //            ZStack {
    //                if self.question.isEmpty {
    //                    TextEditor(text: $placeholder)
    //                        .foregroundColor(.gray)
    //                        .disabled(true)
    //                        .padding(.leading, 20.0)
    //                        .frame(height: 50)
    //                }
    //                TextEditor(text: $question)
    //                    .opacity(self.question.isEmpty ? 0.25 : 1)
    //                    .padding(.leading, 20.0)
    //                    .frame(height: 50)
    //            }
                HStack {
                    Text("AB 후보 올리기")
                        .font(.title3)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 20.0)
                    Spacer()
                }
                .padding(.top, 40.0)
                .padding(.bottom, 20)
                HStack {
                    ZStack {
                        Text("A")
                            .font(.title)
                            .fontWeight(.black)
                            .foregroundColor(Color("A"))
                        Image(systemName: "plus.square.fill")
                                .offset(x:45, y: -120)
                                .foregroundColor(Color("A"))
                        Image(systemName: "plus.square.fill")
                            .offset(x:45, y: -120)
                            .foregroundColor(Color("A"))
                        pickedImageA?
                            .resizable()
                            .scaledToFit()
                            .frame(width: 130, height: 280)
                            .cornerRadius(5)
                        Button (action: {
                            self.showingImagePickerA.toggle()
                        }) {
                            Rectangle()
                                .frame(width: 130, height: 280)
                                .foregroundColor(.white)
                                .cornerRadius(5)
                                .shadow(color: .gray, radius: 4, x: 0, y: 2)
                        }
                        .opacity(0.2)
                        .sheet(isPresented: $showingImagePickerA) {
                            SUImagePicker(sourceType: .photoLibrary) { (image) in
                                
                                self.pickedImageA = Image(uiImage: image)
                                print(image)
                            }
                        }
                    }
                    ZStack {
                        Text("B")
                            .font(.title)
                            .fontWeight(.black)
                            .foregroundColor(Color("B"))
                        Image(systemName: "plus.square.fill")
                                .offset(x:45, y: -120)
                                .foregroundColor(Color("B"))
                        pickedImageB?
                            .resizable()
                            .scaledToFit()
                            .frame(width: 130, height: 280)
                            .cornerRadius(5)
                        Button (action: {
                            self.showingImagePickerB.toggle()
                        }) {
                            Rectangle()
                                .frame(width: 130, height: 280)
                                .foregroundColor(.white)
                                .cornerRadius(5)
                                .shadow(color: .gray, radius: 4, x: 0, y: 2)
                        }
                        .opacity(0.2)
                        .sheet(isPresented: $showingImagePickerB) {
                            SUImagePicker(sourceType: .photoLibrary) { (image) in
                                
                                self.pickedImageB = Image(uiImage: image)
                                print(image)
                            }
                        }
                    }
                }
                .padding(.bottom, 40.0)
                Spacer()
                Button(action: {
                    appendTest()
                }) {
                    Text("테스트 등록하기")
                        .frame(width: 350, height: 50)
                        .foregroundColor(.white)
                        .background(.black)
                        .cornerRadius(10)
                }.padding(.bottom, 40.0)
            }
        }
    }
}

//struct AddView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddView()
//    }
//}
