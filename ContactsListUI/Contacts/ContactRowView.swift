//
//  ContactRowView.swift
//  ContactsListUI
//
//  Created by user246073 on 10/19/24.
//

import SwiftUI

struct ContactRowView: View {
    let person: Person
    
    var body: some View {
        NavigationLink(
            destination: PersonDetailsView(person: person)
        ) {
            HStack {
                Text(person.fullName)
                    .foregroundColor(.black)
                Spacer()
            }
        }
    }
}

#Preview {
    ContactRowView(person: DataStore().generatePersons().first!)
}
