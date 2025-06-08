//
//  AutoRelesePool.swift
//  firstLesson
//
//  Created by Максим Бондарев on 08.06.2025.
//

import Foundation

func testAutoRelesePool() {
    var a = 0
    for _ in 0..<1_000_000 {
        autoreleasepool {
            let str = "qweqwe"
            a += str.count
        }
    }
    print(a) // Для демонстрации результата
}

