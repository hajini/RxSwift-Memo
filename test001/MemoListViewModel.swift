//
//  MemoListViewModel.swift
//  test001
//
//  Created by Hajin Jeong on 2021/05/17.
//

import Foundation
import RxSwift
import RxCocoa

class MemoListViewModel: CommonViewModel {
    var memoList: Observable<[Memo]> {
        return storage.memoList()
    }
}
