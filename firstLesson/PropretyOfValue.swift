//
//  PropretyOfValue.swift
//  firstLesson
//
//  Created by Максим Бондарев on 02.02.2025.
//

import Foundation

func proprety(){
    print("HelloWorld".count)
    print(4.isZero)
    print(Int.random(in: 1...100))
    
    
    var b: String? = "Hello"
    if let b = b, let Character = b.first {
        b.count
    }
    
    b?.count
    
    let v = b?.first?.uppercased().first
    
    
}
