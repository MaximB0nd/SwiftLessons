//
//  SecurityLinksClass.swift
//  firstLesson
//
//  Created by Максим Бондарев on 15.03.2025.
//

import Foundation

class Class1{
    unowned let a: Class2
    let b: Int
    
    init(a: Class2, b: Int) {
        self.a = a
        self.b = b
    }
}

class Class2{
    weak var c: Class1? = nil

}

func testSecurityLinks() {
    var a = Class2()
    var b = Class1(a: a, b: 1)
    a.c = b
    
    
    
}
