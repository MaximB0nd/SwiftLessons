//
//  OptionalTypes.swift
//  firstLesson
//
//  Created by Максим Бондарев on 01.02.2025.
//

import Foundation


func optionalTypes() {
    var string: String?
    string = nil
    let a: Int! = 2
    let b: Int! = 1
    
    if let usualA: Int = a, let b: Int = b{
        print("A has own numbers")
    }
    else {
        print("A or B are nil")
    }
    
    print(a! + b!)
    
    print(a + b)
    
    let text: String? = readLine()
    print(text ?? "no text")
    
    
    
    
    
    
    
    

    
}
