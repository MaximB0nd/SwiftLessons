//
//  Collections.swift
//  firstLesson
//
//  Created by Максим Бондарев on 03.02.2025.
//

import Foundation

func collections(){
    
    let name: Array<String> = ["Макс", "Иван", "Сергей"] // can do any things using values in array
    // array - generic
    
    let thigs: Array<Any> = [1, "2", true] // can NOT do any things using values in array
    
    let allThings = [1, 2, 3, "Hello"] as [Any] // +
    
    let numbers: [Any] = [1, 2, 3]
    
    let names: Array<String> = Array<String>(arrayLiteral: "Max", "Ivan", "Sergey")
    
    var names1: [String] = ["Max", "Ivan", "Sergey"]
    let names2: [String] = []
    let names3: [String?] = ["Max", nil, "Sergey"]
    let names4: [String]? = nil
    let names5: [String?]?
    
    print(names1.count)
    
    names1.append("peter")
    names1.insert("mike", at: 0)
    
    names1.removeFirst()
    
    
}
