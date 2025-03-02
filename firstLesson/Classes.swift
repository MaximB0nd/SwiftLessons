//
//  File.swift
//  firstLesson
//
//  Created by Максим Бондарев on 02.03.2025.
//

import Foundation
import Darwin

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

class Human{
    let name: String
    let surname: String
    let patronymic: String?
    
    init(name: String, surname: String, patronymic: String?){
        self.name = name
        self.surname = surname
        self.patronymic = patronymic
        
    }
    
    func getFullName() -> String {
        return "\(self.name) \(self.surname) \(self.patronymic ?? "")"
    }
}


func CreatePerson(){
    let Max = Person(height: 184, weight: 80, name:"Max")
    print(Max)
}
