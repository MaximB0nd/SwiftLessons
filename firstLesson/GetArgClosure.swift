//
//  GetArgClosure.swift
//  firstLesson
//
//  Created by Максим Бондарев on 08.06.2025.
//

import Foundation

func testGetArgClosure() {
    var a = 10
    let closure1: () -> Void = {
        print(a)
    }
    let closure2: () -> Void = { [a] in
        print(a)
    }
    
    a = 20
    closure1()
    closure2() 
}
