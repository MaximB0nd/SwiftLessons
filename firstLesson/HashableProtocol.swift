//
//  HashableProtocol.swift
//  firstLesson
//
//  Created by Максим Бондарев on 15.03.2025.
//

import Foundation

struct Child {
    let name: String
    let age: Int
}

extension Child: Hashable {
    static func == (lhs: Child, rhs: Child) -> Bool {
        lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}

func testHashable() {
    var set: Set<Child> = []
    set.insert(Child(name: "Max", age: 10))
    set.insert(Child(name: "Max", age: 12))
    
    print(set.contains(Child(name: "Masax", age: 1)))
    
    print(Child(name: "Max", age: 12) == Child(name: "Max", age: 12))
}
