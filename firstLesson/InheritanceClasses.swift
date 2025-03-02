//
//  InheritanceClasses.swift
//  firstLesson
//
//  Created by Максим Бондарев on 03.03.2025.
//

import Foundation

class Shape {
    
    let name: String
    let color: String
    let x: Int
    let y: Int
    
    init(name: String, color: String, x: Int, y: Int) {
        self.name = name
        self.color = color
        self.x = x
        self.y = y
    }
    
    func paintInfo() -> String {
        return """
               Name: \(name)
               Square: unknown
               Color: \(color)
               Coords: 
                x: \(x)
                y: \(y)
               """
    }
}

func InheritanceClasses() {
    let shape: Shape = Shape(name: "Rectangle", color: "Green", x: 10, y: 12)
    print(shape.paintInfo())
    
}
