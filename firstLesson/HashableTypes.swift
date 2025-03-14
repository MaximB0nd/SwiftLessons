//
//  HashableTypes.swift
//  firstLesson
//
//  Created by Максим Бондарев on 14.03.2025.
//

import Foundation

func getHashValue<T: Hashable>(_ value: T) -> Int {
    return value.hashValue
}

