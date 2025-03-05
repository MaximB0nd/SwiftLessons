//
//  File.swift
//  firstLesson
//
//  Created by Максим Бондарев on 05.03.2025.
//

import Foundation

class A{
    lazy var one: String? = "one"
    var two: String{
        get {
            return one ?? "two"
        }
        set {
            print(newValue)
        }
    }
    
    var three: String{
        get {
            return "three"
        }
    }
    
    var four: String = "four"{
        willSet{
            print("New value: \(newValue)")
        }
        didSet {
            print("Old value: \(oldValue)")
        }
    }
    
    
}

func propretiesClass() {
    var one = A()
    print(one)
    print(one.two)
    one.two = "new"
    one.four = "five"
    
}
