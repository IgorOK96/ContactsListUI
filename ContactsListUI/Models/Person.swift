//
//  Person.swift
//  Contact List
//
//  Created by user246073 on 9/14/24.
//

import Foundation


struct Person: Identifiable {
    let id = UUID()
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        name + " " + surname
    }
    
    static func generatePersons() -> [Person] {
        var persons: [Person] = []
        let dataStore = DataStore.shared
        
        let namesCopy = dataStore.names.shuffled()
        let surnamesCopy = dataStore.surnames.shuffled()
        let phoneNumbersCopy = dataStore.phoneNumbers.shuffled()
        let emailsCopy = dataStore.emails.shuffled()
        
        let count = min(
            namesCopy.count,
            surnamesCopy.count,
            phoneNumbersCopy.count,
            emailsCopy.count
        )
        
        // Вместо removeFirst() используем индексный перебор
        for index in 0..<count {
            let person = Person(
                name: namesCopy[index],
                surname: surnamesCopy[index],
                phoneNumber: phoneNumbersCopy[index],
                email: emailsCopy[index]
            )
            persons.append(person)
        }
        
        return persons
    }
}
