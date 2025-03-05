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

class Square: Shape{
    
    let side: Int
    
    init(name: String, color: String, x: Int, y: Int, side: Int) {
        self.side = side
        super.init(name: name, color: color, x: x, y: y)
    }
    
    override func paintInfo() -> String {
        let squareSquare = side * side
        return """
               Name: \(name)
               Square: \(squareSquare)
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
    let square = Square(name: "Square", color: "Red", x: 10, y: 12, side: 10)
    print(square.paintInfo())
    
}
