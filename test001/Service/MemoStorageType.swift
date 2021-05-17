//
//  MemoStorageType.swift
//  test001
//
//  Created by Hajin Jeong on 2021/05/17.
//

//메모리 저장소 구현
import Foundation
import RxSwift

protocol MemoStorageType {
    // CRUD 처리 Method
    @discardableResult
    func createMemo(content: String) -> Observable<Memo>
    
    @discardableResult
    func memoList() -> Observable<[Memo]>
    
    @discardableResult
    func update(memo: Memo, content: String) -> Observable<Memo>
    
    @discardableResult
    func delete(memo: Memo) -> Observable<Memo>
    
}
