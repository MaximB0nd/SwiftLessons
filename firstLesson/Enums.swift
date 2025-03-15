//
//  Enums.swift
//  firstLesson
//
//  Created by Максим Бондарев on 15.03.2025.
//

import Foundation

enum MoneyType: String {
    case ruble
    case dollar
    case euro
}

enum workingMode: Int {
    case office = 6
    case remote
    
    init?(a: Int){
        guard a > 0 else {
            return nil
        }
        self = .office
    }
}

enum days{
    case day (String, String)
}


func testEnums() {
    var money: MoneyType = .dollar
    print(type(of:money))
    
    switch money {
    case .ruble:
        print("Рубль")
    case .dollar:
        print("Доллар")
    case .euro:
        print("Euro")
        
    }
    var work = workingMode(a: -1)
    print(workingMode.office.rawValue)
    
    var day = days.day("Понедельник", "Вторник")
    switch day {
    case .day(let first, let second):
        print("\(first) \(second)")
    }
}




