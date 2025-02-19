//
//  WhileCycle.swift
//  firstLesson
//
//  Created by Максим Бондарев on 14.02.2025.
//

import Foundation

func WhileCycle() {
    var i = 1
    while i <= 5 {
        print(i)
        i += 1
    }
    
    repeat {
        print("repeat")
        break
    } while true
}
