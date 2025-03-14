//
//  ProtocolTypes.swift
//  firstLesson
//
//  Created by Максим Бондарев on 14.03.2025.
//

import Foundation

protocol SomeProtocol {
    var mustBeSettable: Int { get set }
    var notSettable: Int {get}
    
    init (one: Int, two: Int)
    
    subscript(a: Int, b: Int) -> Int{ get set
    }
    
}

struct someStructure: SomeProtocol {
    var mustBeSettable: Int
    var notSettable: Int
    
    init(one: Int, two: Int) {
        mustBeSettable = one
        notSettable = two
       
    }
    
    subscript(a: Int, b: Int) -> Int {
        get {mustBeSettable}
        set {mustBeSettable = newValue}
    }
}



protocol AnotherProtocol {
    var number: Int {get set}
}


class SomeClass: AnotherProtocol {
    var number: Int = 0
}

class AnotherClass {
    var number: Int = 0
}

class YetAnotherClass: AnotherProtocol {
    var num = 0
    var number: Int {get{num} set{num = newValue}}
}

func testProtocol(){
    let a = SomeClass()
    let b = AnotherClass()
    let c = YetAnotherClass()
    let values: [Any] = [a, b, c]
    for (index, value) in values.enumerated() {
        if let someValue = value as? AnotherProtocol {
            print(index)
        }
    }
}
