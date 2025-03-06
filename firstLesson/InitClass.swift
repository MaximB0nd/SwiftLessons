//
//  InitDesInitClasses.swift
//  firstLesson
//
//  Created by Максим Бондарев on 05.03.2025.
//

import Foundation

class ABS{
    init (a: Int) {
        print(a)
    }
    
    init () {    // перегрузка
        
    }
}


class Squarer{
    let a: Int
    let b: Int
    
    init? (a: Int, b: Int) {
        guard a >= 1, b >= 1 else {
            return nil
        }
        self.a = a
        self.b = b
        
    }
    
    init? (side: Int){
        guard side >= 1 else {return nil}
        self.a = side
        self.b = side
        
    }
    
}

class kvadrat: Squarer{
    init?(allSides: Int){
        guard allSides >= 1 else {return nil}
        super.init(a: allSides, b: allSides)
    }
}

func initDesInitClasses() {
    let a = ABS()
    
    let b = Squarer(a: 10, b: 20)
    let c = Squarer(side: 10)
    
    
    
    
}



