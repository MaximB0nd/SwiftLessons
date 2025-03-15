//
//  Enums.swift
//  firstLesson
//
//  Created by Максим Бондарев on 15.03.2025.
//

import Foundation

enum MoneyType {
    case ruble
    case dollar
}

func testEnums() {
    var money: MoneyType = .ruble
    print(type(of:money))
}




