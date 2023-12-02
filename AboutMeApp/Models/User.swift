//
//  User.swift
//  AboutMeApp
//
//  Created by Александр Зинин on 02.12.2023.
//

struct User {
    let userName: String
    let password: String
    
    static func getUser() -> User {
        User(userName: "Alexey", password: "123")
    }
}

struct Person {
    let name: String
    let surName: String
    let age: Int
    let profession: String
    let biografy: String
    
    static func getPerson() -> Person {
        Person(
            name: "Aleksandr",
            surName: "Zinin",
            age: 38,
            profession: "IOS Developer",
            biografy: "Здесь должна быть интересная история об интересном человеке!"
        )
    }
}
