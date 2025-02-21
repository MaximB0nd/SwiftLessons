//
//  Sets.swift
//  firstLesson
//
//  Created by Максим Бондарев on 21.02.2025.
//

import Foundation

func Sets(){
    let officePeoples: Array<String> = ["Вася", "Петя", "Маша", "Даша", "Маша"]
    var goodOfficePeoples: Set = ["Max", "Gleb", "Oleg"]

    
    goodOfficePeoples.insert("Max2")
    
    let newPeoples: Set = ["Max", "Dima"]
    
    print(goodOfficePeoples)
    print(newPeoples)
    
    print(goodOfficePeoples.intersection(newPeoples)) // +
    
    print(goodOfficePeoples.subtracting(newPeoples)) // -
    
    print(goodOfficePeoples.union(newPeoples)) // all
    
    print(goodOfficePeoples.symmetricDifference(newPeoples)) // ones
    
    let prSet: Set<Int> = Set<Int> ([1, 3, 4])
    
    goodOfficePeoples.remove("Max")
    print(goodOfficePeoples)
    
    print(goodOfficePeoples.contains("Max"))
    
    print(goodOfficePeoples.insert("Max"))
    print(goodOfficePeoples.insert("Max"))
    
}


