//
//  DirectDispatch.swift
//  firstLesson
//
//  Created by Максим Бондарев on 08.06.2025.
//

import Foundation

protocol Drawable {
}

extension Drawable {
    func draw() {
        print("Drawing...")
    }
}

final class Circle: Drawable {
    func draw() {
        print("Drawing a circle.")
    }
}

func testDirectDispatch() {
    let a = Circle()
    let b: Drawable = Circle()
    a.draw()
    b.draw()
}
