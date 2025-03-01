//
//  File.swift
//  firstLesson
//
//  Created by Максим Бондарев on 02.03.2025.
//

import Foundation

class Person{
    let height: Int
    let weight: Int
    let name: String
    
    init(height: Int, weight: Int, name: String) {
        self.height = height
        self.weight = weight
        self.name = name
    }
    
}

func CreatePerson(){
    let Max = Person(height: 184, weight: 80, name:"Max")
    print(Max)
}
