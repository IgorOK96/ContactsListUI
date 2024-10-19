//
//  PersonDetailsView.swift
//  ContactsListUI
//
//  Created by user246073 on 10/19/24.
//

import SwiftUI

struct PersonDetailsView: View {
    @Binding var isPresented: Bool
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 135, height: 135)
                Spacer()
            }
            
            DetailsRowView(image: "phone", textInfo: person.phoneNumber)
            DetailsRowView(image: "envelope", textInfo: person.email)

        }
        .font(.headline)
        .navigationTitle(person.fullName)
    }
}

#Preview {
    
    PersonDetailsView(isPresented: .constant(true), person: DataStore().generatePersons().first!)
}
