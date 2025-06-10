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
    func reduce(_ state: inout State, action: Action) -> State
}

struct Counter: Reducer {
    typealias State = Int
    enum Action {
        case increment
        case decrement
    }
    
    func reduce(_ state: inout State, action: Action) -> Int {
        switch action {
            case .increment:
            return state + 1
        case .decrement:
            return state - 1
        }
    }
}

struct PrintChangesReducer<Base: Reducer>: Reducer where Base.State: Equatable{
    
    let base: Base
    
    func reduce(_ state: inout Base.State, action: Base.Action) -> Base.State {
        let baseBeforeAction = state
        base.reduce(&state, action: action)
        if state != baseBeforeAction {
            print("\(state)")
        }
        return state
    }
    
}
    

