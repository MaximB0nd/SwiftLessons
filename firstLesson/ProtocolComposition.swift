//
//  ProtocolComposition.swift
//  firstLesson
//
//  Created by Максим Бондарев on 08.06.2025.
//

import Foundation

protocol ProtocolOne: AnyObject {
    var a: Int { get }
}

protocol ProtocolTwo {
    var b: Int { get }
}

protocol ProtocolComposition: ProtocolOne, ProtocolTwo { }

typealias ProtocolCompositionAlias = ProtocolOne & ProtocolTwo
