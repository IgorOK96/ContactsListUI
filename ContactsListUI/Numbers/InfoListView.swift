//
//  InfoListView.swift
//  ContactsListUI
//
//  Created by user246073 on 10/19/24.
//

import SwiftUI

struct InfoListView: View {
    let title: String
    let contacts: [Person]

    var body: some View {
        List(contacts) { contact in
            Text(contact.fullName)
                .foregroundStyle(.gray)
                .font(.headline)
            DetailsRowView(image: "phone", textInfo: contact.phoneNumber)
            DetailsRowView(image: "envelope", textInfo: contact.email)
//                .padding(.bottom, 16)
//            думал создать мини отступы между листами но втф стандарт полоска
//            к некст листу ложиться
        }
        .listStyle(.plain)
        .navigationTitle(title)
    }
}

#Preview {
    InfoListView(title: "Bey Bey", contacts: DataStore().generatePersons())
}
