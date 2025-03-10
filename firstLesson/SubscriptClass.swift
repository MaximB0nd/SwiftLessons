//
//  SubscriptClass.swift
//  firstLesson
//
//  Created by Максим Бондарев on 10.03.2025.
//

import Foundation

class Field{
    
    let fieldSize: Int
    var field = [[String]]()
    
    init(fieldSize: Int){
        self.fieldSize = fieldSize
        getField()
    }
    
    func getField() {
        for i in 0..<fieldSize {
            var row: [String] = []
            for j in 0..<fieldSize {
                row.append(" ")
            }
            self.field.append(row)
        }
    }
    
//    func symbol(x: Int, y: Int) -> String? {
//        guard x >= 0, x < fieldSize, y >= 0, y < fieldSize else {
//            return nil
//        }
//        return field[x][y]
//    }
    
//    func update (x: Int, y: Int, symbol: String) {
//        guard x >= 0, x < fieldSize, y >= 0, y < fieldSize, self.field[x][y] != " " else {
//            return
//        }
//        self.field[x][y] = symbol
//    }
    
    subscript(x: Int, y: Int) -> String? {
        get{
            guard x >= 0, x < fieldSize, y >= 0, y < fieldSize else {
                return nil
            }
            return field[x][y]
        }
        
        set(symbol){
            guard x >= 0, x < fieldSize, y >= 0, y < fieldSize, self.field[x][y] != " ", let symbol = symbol
            else {
                return
            }
            field[x][y] = symbol
        }
    }
    
    
    
    
    
}
    
func testSubscript(){
    var a = Field(fieldSize: 3)
    a[0, 1] = "X"
    print(a[0, 1]!)
    
}
