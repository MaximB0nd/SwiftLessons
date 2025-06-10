//
//  GenericProtocol.swift
//  firstLesson
//
//  Created by Максим Бондарев on 10.06.2025.
//

import Foundation

protocol Reducer {
    associatedtype State
    associatedtype Action
    func reduce(_ state: State, action: Action) -> State
}

struct Counter: Reducer {
    typealias State = Int
    enum Action {
        case increment
        case decrement
    }
    
    func reduce(_ state: State, action: Action) -> Int {
        switch action {
            case .increment:
            return state + 1
        case .decrement:
            return state - 1
        }
    }
}
