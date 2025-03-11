//
//  Structures.swift
//  firstLesson
//
//  Created by Максим Бондарев on 10.03.2025.
//

import Foundation

struct AStruct {
    var age: Int
    let name: String
    
    mutating func plusAge(num: Int){
        age += num
    }
}

func testStruct(){
    var a = AStruct(age: 10, name: "Max")
    a.plusAge(num: 10)
    
}
