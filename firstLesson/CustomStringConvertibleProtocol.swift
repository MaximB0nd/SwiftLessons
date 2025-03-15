//
//  CustomStringConvertibleProtocol.swift
//  firstLesson
//
//  Created by Максим Бондарев on 15.03.2025.
//

import Foundation

struct Woman{
    let age: Int
    let name: String
}

extension Woman: CustomStringConvertible {    
    var description: String {
        """
        Name: \(name)
        Age: \(age) years old
        """
    }
}

func testCustomStringConvertible() {
    print(Woman(age: 25, name: "Daria"))
}
