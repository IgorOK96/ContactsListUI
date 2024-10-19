//
//  Contacts Data.swift
//  Contact List
//
//  Created by user246073 on 9/14/24.
//


final class DataStore {
    static let shared = DataStore()
    
    let names = [
        "Igor", "Max", "Oleg", "Vlad",
        "Pasha", "Ira", "Kristina",
        "Margarita", "Lera", "Snejana"
    ]
    
    let surnames = [
        "Ivanov", "Korolev", "Petrov",
        "Bulgakov", "Smirnov", "Pelipenko",
        "Kaira", "Prudnikov", "Kondratenko",
        "Belko"
    ]
    
    let phoneNumbers = [
        "776-88-22-11", "776-23-26-15", "776-81-62-18",
        "776-18-22-12", "776-08-20-01", "776-77-33-11",
        "776-40-99-88", "776-11-22-88", "776-55-00-11",
        "776-42-00-11"
    ]
    
    let emails = [
        "brat@gmail.com", "krot@gmail.com", "monstr@gmail.com",
        "vafla@gmail.com", "lord@gmail.com", "kosmos@gmail.com",
        "nikita118@gmail.com", "fakel@gmail.com", "wtf001@gmail.com",
        "ogm666@gmail.com"
    ]
    
    private init() {}

}

