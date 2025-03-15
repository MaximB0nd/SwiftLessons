//
//  CustomStringLiteralProtocol.swift
//  firstLesson
//
//  Created by Максим Бондарев on 16.03.2025.
//

import Foundation

struct Email {
    let value: String
}

extension Email: ExpressibleByStringLiteral {
    init(stringLiteral value: String){
        self.init(value: value)
    }
}

func testExpressibleByStringProtocol() {
    let email = Email(value: "max@mail.ru")
    print(email)
}
