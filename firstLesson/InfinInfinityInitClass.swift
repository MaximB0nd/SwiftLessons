//
//  InfinInfinityInitClass.swift
//  firstLesson
//
//  Created by Максим Бондарев on 09.03.2025.
//

import Foundation

class oneClass {
    let one: Int

    
    init(one: Int, two: Int) {
        self.one = one
//        self.one = two
    }
    
    convenience init() {
        self.init(1)
    }
    
    convenience init(_ param: Int) {
        self.init()
    }
}
