//
//  GuardOperator.swift
//  firstLesson
//
//  Created by Максим Бондарев on 15.02.2025.
//

import Foundation

func GuardOperator(Operand_1 pr1: Int?, Operand_2 pr2: Int?) -> Int? {
    guard let pr1 = pr1, let pr2 = pr2 else {
        return nil
    }
    guard pr2 != 0 else {
        return nil
    }
    
    return pr1 / pr2
}
