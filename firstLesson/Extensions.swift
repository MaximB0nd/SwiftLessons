//
//  Extensions.swift
//  firstLesson
//
//  Created by Максим Бондарев on 15.03.2025.
//

import Foundation


struct structnA{
    let a: Int
}

extension structnA {
    func printA() {
        print(a)
    }
}

func testExtensions() {
    let a = structnA(a: 10)
    a.printA()
}

extension Array {
    subscript (index: Int) -> Element? {
        guard index >= 0 && index < self.count else {
            return nil
        }
        return self[index]
    }
}
