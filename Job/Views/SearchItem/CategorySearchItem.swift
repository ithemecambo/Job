//
//  CategorySearchItem.swift
//  Job
//
//  Created by SENGHORT on 4/30/21.
//

import SwiftUI

struct CategorySearchItem: View {
    @State var category: CategorySearchData
    
    var body: some View {
        HStack {
            Text(category.name ?? "")
                .padding()
                .foregroundColor(.white)
                .background(Color("DarkOrange"))
                .cornerRadius(25)
        }
    }
}
