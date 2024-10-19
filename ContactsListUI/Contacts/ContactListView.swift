//
//  ContactListView.swift
//  ContactsListUI
//
//  Created by user246073 on 10/19/24.
//

import SwiftUI

struct ContactListView: View {
    let title: String
    let contacts: [Person]
    
    var body: some View {
        List(contacts) { contact in
            ContactRowView(person: contact)
        }
        .listStyle(.plain)
        .navigationTitle(title)
    }
}

#Preview {
    ContactListView(title: "hellow", contacts: DataStore().generatePersons())
}
