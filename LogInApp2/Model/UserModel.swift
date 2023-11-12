//
//  UserModel.swift
//  LogInApp2
//
//  Created by Александр Соболев on 11.11.2023.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let userImage: String
    let bornDate: String
    let zodiacSing: String
    let cityFrom: String
    let cellPhone: String
    let hobby: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Александр",
            surname: "Соболев",
            userImage: "AlexPH",
            bornDate: "08.07.1988",
            zodiacSing: "Рак",
            cityFrom: "Воронеж",
            cellPhone: "89610297502",
            hobby: "Программирование"
        )
    }
}
