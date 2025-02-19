//
//  Cycles.swift
//  firstLesson
//
//  Created by Максим Бондарев on 14.02.2025.
//

import Foundation

func Cycles(){
    
    let numbers: Array<Int> = Array<Int>(arrayLiteral: 1, 2, 4, 5, 6, 10)
    
    for i in 1...10{
        print(i)
    }
    
    for _ in 1...10{
        print("Hello")
    }
    
    for i in stride(from: 10, to: 1, by: -1){
        print(i)
    }
    
    print("\n\n")
    
    for num in numbers{
        print(num)
    }
}
