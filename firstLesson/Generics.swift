//
//  Generics.swift
//  firstLesson
//
//  Created by Максим Бондарев on 15.03.2025.
//

import Foundation

struct doubleArray <Type> {
    var array: [[Type]]?
}

func testGenerics() {
    let doubleArray = doubleArray<Int>(array: [[123, 123]])
    print(doubleArray)
    var a = testGenerics()
    print(type(of: a))
}
    
func testGeteric<T>() -> [T]{
    return [T]()
}

func sum<T: Numeric>(_ a: T, _ b: T) -> T {
    return a + b
}
