//
//  ResultBuilder.swift
//  firstLesson
//
//  Created by Максим Бондарев on 11.06.2025.
//

import Foundation

@resultBuilder struct IntBuilder<T: BinaryInteger> {
    static func buildBlock(_ components: T...) -> T {
        var result: T = 0
        for component in components {
            result += component
        }
        return result
    }
    
    static func buildExpression(_ expression: String) -> T {
        T(Int(expression) ?? 0)
    }
    
    static func buildExpression(_ expression: T) -> T {
        expression
    }
}

func buildIntegerSum(@IntBuilder<Int> numbers: () -> Int) -> Int {
    numbers()
}


func testIntBuilder() {
    var intSum = buildIntegerSum {
        1
        2
        3
        4
        "10"
    }
    
    print(intSum)
    
}
