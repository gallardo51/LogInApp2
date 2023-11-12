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
        User(login: "User", password: "Password", person: Person.getPerson())
    }
}

struct Person {
    let name: String
    let surname: String
    
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Alex", surname: "Sobolev")
    }
}
