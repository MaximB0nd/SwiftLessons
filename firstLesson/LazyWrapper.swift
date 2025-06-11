//
//  LazyWrapper.swift
//  firstLesson
//
//  Created by Максим Бондарев on 11.06.2025.
//

import Foundation

@propertyWrapper enum Lazy<Value> {
    case initialized(Value)
    case uninitialized(() -> Value)
    
    init(wrappedValue: @autoclosure @escaping () -> Value) {
        self = .uninitialized(wrappedValue)
    }
    
    var wrappedValue: Value {
        mutating get {
            switch self {
                case .initialized(let value):
                return value
            case .uninitialized(let initializer):
                let value = initializer()
                self = .initialized(value)
                return value
            }
        }
    }
}


