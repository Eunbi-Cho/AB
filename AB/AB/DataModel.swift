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
        Tests(question: "어떤 UI가 더 유저 친화적인가요?",
              ImageA: Image("kurly"),
              ImageB: Image("musinsa"),
              comment: ["할인율을 알려줘서", "할인 금액을 바로 알려주고, 쿠폰 사용도 친절히 안내해줘서 좋다."]
        ),
        Tests(question: "'별점' vs '좋아요/싫어요'",
              ImageA: Image("watcha"),
              ImageB: Image("netflix"),
              comment: ["별점은 주는 기준이 개인마다 상이하고, 심지어 개인마다 정확한 기준점을 갖고 있지 않기 때문에 평가의 척도를 오히려 흐리게 된다.", "다른 사람의 별점이나 리뷰를 보는 것이 바로 이 인지편향에 의한 잘못된 결정을 하게 만들 수 있다.","점수식 평점으로 쏠림 현상이 일어나는 것을 봄"]
        ),
        Tests(question: "요리 컨텐츠는 어떤 UI가 나을까요?",
              ImageA: Image("gallery"),
              ImageB: Image("list"),
              comment: ["더 많은 컨텐츠를 보여 줄 수 있다.", "사진이 큰 것 보단 내용이 잘 보이는 게 더 좋을 것 같다."]
        ),
        Tests(question: "검색창 위치 어디가 좋을까요?",
              ImageA: Image("setting"),
              ImageB: Image("appstore"),
              comment: ["검색할 양이 많고, 중요한 기능 중 하나일때 탭바에 넣는 것 같다."]
        )
    ]
}
