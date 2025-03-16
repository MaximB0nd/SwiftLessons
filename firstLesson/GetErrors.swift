//
//  GetErrors.swift
//  firstLesson
//
//  Created by Максим Бондарев on 16.03.2025.
//

import Foundation

enum Errors: Error {
    case divideByZero
}

func devide(_ n1: Int, _ n2: Int) throws -> Int{
    guard n2 != 0 else {
        throw Errors.divideByZero
    }
    return n1 / n2
}

func testGetErrors(){
    do {
        var _ = try devide(0, 123)
    } catch Errors.divideByZero {
        print("Devision by zero")
    }
    catch (let error){
        print(error)
    }
    
    var _ = try? devide(12, 0)
}

