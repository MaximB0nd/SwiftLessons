//
//  LongStrings.swift
//  firstLesson
//
//  Created by Максим Бондарев on 22.02.2025.
//

import Foundation

func longStrings(){
    let a = 0
    let b = 12.9999999
    
    let string = "string + \(a) + \(b) + \(Int(b))"
    print(string)
    
    let hello = """
    hello
    w \
    o
    r
    l
    d
    """
    print(hello)
}
