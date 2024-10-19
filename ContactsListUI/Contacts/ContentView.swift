//
//  ContentView.swift
//  ContactsListUI
//
//  Created by user246073 on 10/19/24.
//

import SwiftUI

struct ContentView: View {
    private let contacts = Person.generatePersons()
    
    var body: some View {
        TabView {
            NavigationStack {
                ContactListView(title: "Contact List", contacts: contacts)
            }
            .tabItem {
                Image(systemName: "person.3")
                Text("Contacts")
            }
            
            NavigationStack {
                InfoListView(title: "Contact List", contacts: contacts)
            }
            .tabItem {
                Image(systemName: "phone.fill")
                Text("Numbers")
            }
        }
    }
}

#Preview {
    ContentView()
}
