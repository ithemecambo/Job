//
//  RecentSearchItem.swift
//  Job
//
//  Created by SENGHORT on 4/30/21.
//

import SwiftUI

struct RecentSearchItem: View {
    @State var recentSearch: RecentSearchData
    
    var body: some View {
        HStack {
            Text(recentSearch.name ?? "")
            Spacer()
            Button(action: {
                
            }, label: {
                Image(systemName: "minus.circle")
                    .font(.system(size: 20))
                    .foregroundColor(Color("DarkOrange"))
            })
        }
        .padding([.top, .bottom], 10)
    }
}
