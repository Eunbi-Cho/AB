//
//  DataModel.swift
//  AB
//
//  Created by 조은비 on 2022/05/05.
//

import SwiftUI


struct Tests {
    var question: String
    var ImageA: Image
    var ImageB: Image
    var comment: [String]
}

struct testList {
    static let myTest = [
        Tests(question: "어떤게 더 유저 친화적인가요",
              ImageA: Image("kurly"),
              ImageB: Image("musinsa"),
              comment: ["할인율을 알려줘서", "눈에 잘 띄어서"]
        )
    ]
}
