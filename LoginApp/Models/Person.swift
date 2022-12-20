//
//  Person.swift
//  LoginApp
//
//  Created by Геннадий Ведерников on 24.10.2022.
//


//Модель ничего не должна знать об UI

struct User {
    let login: String
    let password: String
    let person: Person

    static func getUserData() -> User {
        User(
            login: "User",
            password: "1234",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let biography: String
    let job: Company
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Gennady",
            surname: "Vedernikov",
            photo: "Image",
            biography: """
            Я родился в городе Кирове, мне 26 лет. Работал на множестве разных профессий, но большего всего понравилось программирование, им увлекался с детства. Любой к продукции компании Apple дала о себе знать, и я выбрал мобильную разработку как то, в чем хочу развиваться. Стараюсь сделать всю работу с блеском, что и отличает меня от остальных.
            """,
            job: Company.getCompany()
        )
    }
}

struct Company {
    let title: String
    let jobTitle: String
    
    static func getCompany() -> Company {
        Company(
            title: "Freelance",
            jobTitle: "iOS Developer"
        )
    }
}
