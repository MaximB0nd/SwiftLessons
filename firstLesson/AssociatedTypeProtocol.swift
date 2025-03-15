//
//  AssociatedTypeProtocol.swift
//  firstLesson
//
//  Created by Максим Бондарев on 15.03.2025.
//

import Foundation

protocol Protocoled{
    associatedtype T: Numeric
    
    var date: T { get }
    
    func copy() -> Self
}

struct Structed: Protocoled {
    typealias T = Int
    
    var date: Int
    
    init(date: Int) {
        self.date = date
    }
    
    func copy() -> Structed {
        return Structed(date: date)
    }
}

protocol number {
    var number: Int { get }
}

struct numberStruct {
    var number: Int
    
    mutating func increment(num: number) {
        self.number = num.number
    }
}

protocol protocoled2 {
    associatedtype T: number
    
    var date: T { get }
}

struct structed2 {
    let a: any protocoled2
    let b: any protocoled2
    
    init(a: any protocoled2, b: any protocoled2)
    {
        self.a = a
        self.b = b
    }
}

struct Exaple<C> where C: Protocoled, C.T == Int {
    let a: C
    
    func getDate() -> Int {
        return a.date + 1
    }
}
