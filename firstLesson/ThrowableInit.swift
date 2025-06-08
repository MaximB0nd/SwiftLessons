//
//  ThrowableInit.swift
//  firstLesson
//
//  Created by Максим Бондарев on 08.06.2025.
//

import Foundation

struct MeettingErrors: Error {
    var message: String
}

struct Personid {
    let name: String
    
    func catMeet() -> Bool {
        return Int.random(in: 0...1) == 0
    }
}


struct Meetting {
    var people: [Personid]
    
    init(people: [Personid]) throws {
        guard people.allSatisfy({$0.catMeet()}) else {
            throw MeettingErrors(message: "Не все участники могут встречаться")
        }
        self.people = people
    }
}

func tryMeetting() {
    do {
        let meetting = try Meetting(people:[ Personid(name: "Петя"), Personid(name: "Маша")])
        print("Все участники могут встречаться")
    } catch {
        print("Ошибка: \(error)")
    }
}
