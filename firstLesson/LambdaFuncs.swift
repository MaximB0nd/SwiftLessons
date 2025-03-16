//
//  LambdaFuncs.swift
//  firstLesson
//
//  Created by Максим Бондарев on 16.03.2025.
//

import Foundation

func testLambdaFuncs() {
    let a = { print ("Hello")}
    let b = a
    
    some(fun: a)
    
    let c: (Int, Int) -> Int = {(num1: Int, num2: Int) -> Int in
        let a = num1 + num2
        return a
    }
    
    let d: (Int, Int) -> Int = { num1, num2 in
        return num1 + num2
    }
    
    let e: (Int, Int) -> Int = { return $0 + $1 }
    
    var const = 10
    
    let sum: (Int, Int) -> Int = { [const] a, b in
        return a + b + const
    }
    
    
}

func some(fun: () -> Void){
    fun()
}

class TestClass {
    var testVar: (() -> Void)?
    
    func newTestVar (fun: @escaping () -> Void) {
        self.testVar = fun
    }
}

func testTestClass() {
    let testClass = TestClass()
    testClass.testVar = {[weak testClass] in print(testClass) }
}
