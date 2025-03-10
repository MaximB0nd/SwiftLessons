//
//  DeinitClass.swift
//  firstLesson
//
//  Created by Максим Бондарев on 10.03.2025.
//

import Foundation

class Object{
    init (){
        print("Объект инициализирован")
    }
    
    deinit {
        print("Объект уничтожен")
    }
}


func testDeinit(){
    var a = Object()
    print("End of test")
}
