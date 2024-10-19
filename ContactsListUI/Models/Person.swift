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
}
