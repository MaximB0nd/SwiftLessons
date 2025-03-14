//
//  MemotuLeak.swift
//  firstLesson
//
//  Created by Максим Бондарев on 14.03.2025.
//

import Foundation

class Man {
    weak var houses: House?
    let name: String
    
    init (name: String) {
        self.name = name
    }
    
    public func addHouse(house: House){
        self.houses = house
    }
}

class House {
    weak var man: Man?
    
    init (man: Man){
        self.man = man
    }
}


//func runMemotuLeak() {
//    var man = Man(name: "Max")
//    var house1 = House(man: man)
//    man.addHouse(house: house1)
//    
//    // memoty leak
//    // house1 and man will not delete from memory
//}
