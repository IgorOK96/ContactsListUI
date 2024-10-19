//
//  DetailsRowView.swift
//  ContactsListUI
//
//  Created by user246073 on 10/19/24.
//

import SwiftUI

struct DetailsRowView: View {
    let image: String
    let textInfo: String
    
    var body: some View {
        HStack (spacing: 15){
            Image(systemName: image)
                .foregroundStyle(.blue)
            Text(textInfo)
            
            Spacer()
        }
    }
}

#Preview {
    DetailsRowView(image: "phone", textInfo: "380991408318")
}
