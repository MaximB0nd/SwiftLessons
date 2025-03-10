//
//  StaticFuncClass.swift
//  firstLesson
//
//  Created by Максим Бондарев on 10.03.2025.
//

import Foundation

class Rectangle {
    static var count: Int = 0
    
    class func getCount() -> Int {
        return count
    }
    
    init() {
        Self.count += 1
    }
}

class Rectangle2: Rectangle {
    class override func getCount() -> Int {
        return count*10
    }
    
    init(num: Int){
        Rectangle2.count += num
        super.init()
        
    }
}
