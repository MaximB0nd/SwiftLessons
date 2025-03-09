//
//  FuncIsParam.swift
//  firstLesson
//
//  Created by Максим Бондарев on 07.03.2025.
//

import Foundation

func summma(a: Int, b: Int) -> Int {
    return a + b
}

func mines(a: Int, b: Int) -> Int {
    return a - b
}

func printValue(function: (Int, Int) -> Int){
    print(function(10, 20))
}

func goFunction() {
    printValue(function: summma)
    printValue(function: mines)
    
}
