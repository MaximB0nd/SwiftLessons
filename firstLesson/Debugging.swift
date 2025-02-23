//
//  Debugging.swift
//  firstLesson
//
//  Created by Максим Бондарев on 22.02.2025.
//

import Foundation

func Debugging(_ nums: [Int]) -> [Int]{
    var nums = nums
    if nums.count > 5 {
        nums.append(0)
    }
    else {
        nums.append(5)
    }
    
    if nums.contains(0) {
        nums.append(8)
    }
    else{
        nums.append(4)
    }
    return nums
}
