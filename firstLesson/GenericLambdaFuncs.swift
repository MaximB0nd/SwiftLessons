//
//  GenericLambdaFuncs.swift
//  firstLesson
//
//  Created by Максим Бондарев on 16.03.2025.
//

import Foundation

func sortArray<T> (_ array: [T], by areInIncreasingOrder: (T, T) -> Bool) -> [T] {
    var array = array
    for i in 0..<array.count-1 {
        for j in (i+1)..<array.count {
            if !areInIncreasingOrder(array[i], array[j]) {
                array.swapAt(i, j)
            }
        }
    }
    return array
}


