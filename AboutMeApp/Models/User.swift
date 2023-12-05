//
//  User.swift
//  AboutMeApp
//
//  Created by Александр Зинин on 02.12.2023.
//

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            userName: "Alexey",
            password: "123",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surName: String
    let foto: String
    let profession: String
    let biografy: String
    
    var fullName: String {
        "\(name) \(surName)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Aleksandr",
            surName: "Zinin", 
            foto: "zinin",
            profession: "IOS Developer",
            biografy: "На данный момент получаю новую и востребованную специальность - IOS Разработчик в SwiftBook!"
        )
    }
}
