//
//  WrappedValue.swift
//  firstLesson
//
//  Created by Максим Бондарев on 11.06.2025.
//

import Foundation

@propertyWrapper struct Clamped<Value: Comparable> {
    private var _wrappedValue: Value
    private let range: ClosedRange<Value>
    
    init(wrappedValue: Value, range: ClosedRange<Value>) {
        self._wrappedValue = Value.clamp(wrappedValue, in: range)
        self.range = range
    }
    
    var wrappedValue: Value {
        get {
            _wrappedValue
        }
        set {
            _wrappedValue = Value.clamp(newValue, in: range)
        }
    }
}

extension Comparable {
    static func clamp(_ value: Self, in range: ClosedRange<Self>) -> Self {
        return min(max(value, range.lowerBound), range.upperBound)
    }
}

struct Percent {
    @Clamped(range: 0...100) var value: Int = 0
}

func testPropertyWrapper() {
    var percent = Percent()
    percent.value = 150
    print(percent.value)
    percent.value = -10
    print(percent.value)
}

