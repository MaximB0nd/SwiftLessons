//
//  TrancformationTypes.swift
//  firstLesson
//
//  Created by Максим Бондарев on 01.02.2025.
//

import Foundation

func Transformation()
{
    let a = 1
    let b = 1.3
    let c = "123"
    
    print(Int(b))
    print(Int(c) ?? 1)
    
    print(Bool("true"))
    
    var conteiner: Any = 1
    print(conteiner)
    conteiner = true
    print(conteiner)
    
    let one: Any = 1
    let two: Any = 2
    
    let result = (one as! Int) - (two as! Int)
    print(result)
    
    let y = a as Any
    let z = y as? Int
    
    print(y is String)
}

