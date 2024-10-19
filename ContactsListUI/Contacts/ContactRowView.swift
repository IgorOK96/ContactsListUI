//
//  ContactRowView.swift
//  ContactsListUI
//
//  Created by user246073 on 10/19/24.
//

import SwiftUI

struct ContactRowView: View {
    let person: Person
    @State private var isPresented = false
    
    var body: some View {
        NavigationLink(
            destination: PersonDetailsView(isPresented: $isPresented, person: person)
        ) {
            Button(action: {isPresented.toggle()}) {
                HStack {
                    Text(person.fullName)
                        .foregroundStyle(.black)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContactRowView(person: DataStore().generatePersons().first!)
}
