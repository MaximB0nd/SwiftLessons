//
//  ThrowSertainError.swift
//  firstLesson
//
//  Created by Максим Бондарев on 08.06.2025.
//

import Foundation

enum ErorrType: Error {
    case someError(String)
}

func throwSomeError() throws(ErorrType) {
    guard (Int.random(in: 0...1) == 0) else {
        throw ErorrType.someError("Some error")
    }
}
