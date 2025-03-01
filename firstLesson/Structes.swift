//
//  Structes.swift
//  firstLesson
//
//  Created by Максим Бондарев on 01.03.2025.
//

import Foundation

struct User{
    let name: String
    let age: Int
    
    func sayHello(){
        print("Hello, \(name)")
        
    }
}

func Structures()
{
    var Max: User = User(name: "Maxim", age: 18)
    print(Max)
}
