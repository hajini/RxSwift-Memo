//
//  TransitionModel.swift
//  test001
//
//  Created by Hajin Jeong on 2021/05/17.
//

import Foundation

enum TransitionStyle {
    case root
    case push
    case modal
}

enum TransitionError: Error {
    case navigationControllerMissing
    case cannotPop
    case unknown
}

