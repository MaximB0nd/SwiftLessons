//
//  ExtensionTypes.swift
//  firstLesson
//
//  Created by Максим Бондарев on 14.03.2025.
//

import Foundation

extension Int {
    var up100: Int {
        return self + 100
    }
}

func testExtension() {
    let a = 10
    print(a.up100)
}
