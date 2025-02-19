//
//  ConditionalsOperators.swift
//  firstLesson
//
//  Created by Максим Бондарев on 01.02.2025.
//

import Foundation

func ConditionalsOperators() {
    
    var age: Int = 25
    
    print("Hello")
    if age >= 18 {
        print("Доступ разрешен")
    } else {
        print("Доступ запрещен")
    }
    
    switch age {
    case 0...17:
        print("Доступ запрещен")
    case 18...25:
        print("Доступ разрешен")
    case 25..<40:
        print( "Норм")
    default :
        print("Неизвестный возраст")
    }
    
    var oldText: String = (age > 20) ? "Доступ разрешен" : "Доступ запрещен"
}
