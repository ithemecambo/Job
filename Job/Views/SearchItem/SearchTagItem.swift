//
//  SearchTagItem.swift
//  Job
//
//  Created by SENGHORT on 4/30/21.
//

import SwiftUI

struct SearchTagItem: View {
    @State var suggestionTag: SuggestionSearchTagData
    
    var body: some View {
        HStack {
            Text(suggestionTag.name ?? "")
            Spacer()
            Text(suggestionTag.count ?? "")
                .font(.caption)
                .foregroundColor(.gray)
        }
        .padding([.top, .bottom], 10)
    }
}

struct SearchTagItem_Previews: PreviewProvider {
    static var previews: some View {
        SearchTagItem(suggestionTag: SuggestionSearchTagData.suggestionSearchTags[0])
    }
}
