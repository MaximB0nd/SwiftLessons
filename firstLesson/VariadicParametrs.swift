//
//  VariadicParametrs.swift
//  firstLesson
//
//  Created by Максим Бондарев on 11.06.2025.
//

import Foundation

func arithmeticMin(_ numbers: Double...) -> Double {
    guard !numbers.isEmpty else {
        return 0
    }
    var minValue = numbers[0]
    for value in numbers[1...] {
        if value < minValue {
            minValue = value
        }
    }
    
    return minValue
}

func == <each Element: Equatable>(lhs: (repeat each Element), rhs: (repeat each Element)) -> Bool {
    for (left, right) in repeat (each lhs, each rhs) {
        guard left == right else {
            return false
        }
    }
    return true
}
