//
//  RequaredInitClass.swift
//  firstLesson
//
//  Created by Максим Бондарев on 06.03.2025.
//

import Foundation

class One{
    let one: Int
    let two: Int
    
    required init(one: Int, two: Int) {
        self.one = one
        self.two = two
    }
    
    init (num: Int){
        self.one = num
        self.two = num
    }
}

class Two: One{
    let three: Int
    let four: Int
    required init(one: Int, two: Int){
        self.four = two
        self.three = two
        super.init(one: one, two: two)
    }
}
