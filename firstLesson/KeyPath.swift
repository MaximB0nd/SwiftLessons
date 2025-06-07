//
//  KeyPath.swift
//  firstLesson
//
//  Created by Максим Бондарев on 08.06.2025.
//

import Foundation

struct Humanid {
    var id: Int
    var name: String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

func sort(_ humans: [Humanid], by keyPath: KeyPath<Humanid, some Comparable>) -> [Humanid] {
    return humans.sorted { $0[keyPath: keyPath] < $1[keyPath: keyPath] }
}

func testKeyPath() {
    let humans: [Humanid] = [
        .init(id: 1, name: "Max"),
        .init(id: 2, name: "Anna"),
        .init(id: 3, name: "Tom"),
    ]
    
    var sortedById = sort(humans, by: \.self.id)
    print(sortedById)
    print()
    sortedById = sort(humans, by: \.self.name)
    print(sortedById)
}
