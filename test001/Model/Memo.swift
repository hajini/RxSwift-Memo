//
//  Memo.swift
//  test001
//
//  Created by Hajin Jeong on 2021/05/17.
//

import Foundation

//메모 구조체 선엄, Equatable 프로토콜
struct Memo: Equatable {
    
    //속성 선언
    var content: String
    var insertDate: Date
    var identity: String
    
    //생성자 추가
    init(content: String, insertDate: Date = Date()) {
        self.content = content
        self.insertDate = insertDate
        self.identity = "\(insertDate.timeIntervalSinceReferenceDate)"
    }
    
    init(original: Memo, updatedContent: String) {
        self = original
        self.content = updatedContent
    }
}
