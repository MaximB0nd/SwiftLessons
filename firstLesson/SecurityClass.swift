//
//  SecurityClass.swift
//  firstLesson
//
//  Created by Максим Бондарев on 10.03.2025.
//

import Foundation

class obj {
    private var _name: String
    
    init(_name: String) {
        self._name = _name
    }
    
    func getName() -> String {
        return _name
    }
}


// private - внутри объекта
// fileprivate - внутри файла
// internal - внутри таргета (сборки)
// public - доступно везде
// open - доступно везде + можно наследоваться и переопределять методы (только для классов)
