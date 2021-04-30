//
//  SearchJobItem.swift
//  Job
//
//  Created by SENGHORT on 4/30/21.
//

import SwiftUI

struct SearchJobItem: View {
    @State var suggestionJob: SuggestionSearchJobData
    
    var body: some View {
        VStack(alignment: .leading)  {
            HStack {
                Image(suggestionJob.companyLogoUrl ?? "")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .cornerRadius(35)
                VStack(alignment: .leading, spacing: 5) {
                    Text(suggestionJob.companyName ?? "")
                        .font(.title3)
                        .foregroundColor(.black)
                    
                    Text(suggestionJob.position ?? "")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color("DarkOrange"))
                }
            }
        }
    }
}

struct SearchJobItem_Previews: PreviewProvider {
    static var previews: some View {
        SearchJobItem(suggestionJob: SuggestionSearchJobData.suggestionSearchJobs[0])
    }
}
