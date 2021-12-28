//
//  Person.swift
//  Persons List
//
//  Created by Alina Sokolova on 28.12.21.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phones: String
    
    static func getInfoAboutPerson() -> [Person] {
        var persons: [Person] = []
        
        for _ in 1...10 {
            let person = Person(name: DataManager.shared.names.randomElement() ?? "",
                                surname: DataManager.shared.surnames.randomElement() ?? "",
                                email: DataManager.shared.emails.randomElement() ?? "",
                                phones: DataManager.shared.phones.randomElement() ?? ""
            )
            
            persons.append(person)
        }
        
    return persons
        }
            
        }
    

