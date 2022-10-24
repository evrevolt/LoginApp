//
//  Person.swift
//  LoginApp
//
//  Created by Геннадий Ведерников on 24.10.2022.
//


//Модель ничего не должна знать об UI

class User {
    var login: String
    var password: String
    
    init(login: String, password: String) {
        self.login = login
        self.password = password
    }
}

class Person: User {
    var name: String = ""
    var info: String = ""
    var hobbi: String = ""
    var before: String = ""
    
    init (login: String,
          password: String,
          name: String,
          info: String,
          hobbi: String,
          before: String) {
        super.init(login: login, password: password)
        self.name = name
        self.info = info
        self.hobbi = hobbi
        self.before = before
    }
}

var someUser = Person(login: "User",
                  password: "1234",
                  name: "Gena",
                  info: "Я люблю спать",
                  hobbi: "Мое хобби - спать",
                  before: "Когда я закончу курс я хочу поспать")

