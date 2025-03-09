//
//  ConvenienceInitClass.swift
//  firstLesson
//
//  Created by Максим Бондарев on 07.03.2025.
//

import Foundation

class OneClass {
    let a: Int
    let b: Int
    
    init(a: Int, b: Int){
        self.a = a
        self.b = b
    }
    
    convenience init(int a: Int){
        self.init(a: a, b: a)
    }
}
