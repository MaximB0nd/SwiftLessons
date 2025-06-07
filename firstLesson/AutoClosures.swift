//
//  AutoClosures.swift
//  firstLesson
//
//  Created by Максим Бондарев on 08.06.2025.
//

import Foundation

func testAutoClosures () {
    getAutoClosure("qwe")
    getAutoClosure(getLongString())
}

func getAutoClosure (_ msg: @autoclosure () -> String) {
    print(msg())
}

func getLongString () -> String {
    return "12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012"
}
