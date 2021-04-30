//
//  SearchView.swift
//  Job
//
//  Created by SENGHORT on 4/29/21.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @State private var showCancelButton: Bool = false
    @State private var suggestionTags = SuggestionSearchTagData.suggestionSearchTags
    @State private var suggestionJobs = SuggestionSearchJobData.suggestionSearchJobs
    @State private var recentSearches = RecentSearchData.recentSearches
    @State private var categorySearches = CategorySearchData.categorySearches
    
    var body: some View {
        VStack {
            HStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                    TextField("", text: $searchText, onEditingChanged: { isEditing in
                        self.showCancelButton = true
                    }, onCommit: {
                        print("onCommit")
                    })
                    .foregroundColor(.white)
                    .modifier(PlaceholderStyleModifier(showPlaceHolder: searchText.isEmpty,
                                                       placeholder: "Which Type Job you looking for?"))

                    Button(action: {
                        self.searchText = ""
                    }) {
                        Image(systemName: "xmark.circle.fill").opacity(searchText == "" ? 0 : 1)
                    }
                }
                .padding(EdgeInsets(top: 55, leading: 6, bottom: 10, trailing: 0))
                .foregroundColor(.white)
                .cornerRadius(5)
                
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "camera.fill")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                    })
                    .padding([.top, .leading, .bottom], 16)
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "mic.fill")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                    })
                    .padding()
                }
                .padding(.top, 40)
            }
            .frame(height: 80)
            .padding()
            .padding(.top, -10)
            .background(Color("DarkOrange"))
            
            List {
                Section(header:
                    HStack {
                        Text("Search Tags")
                    }
                    .padding([.top, .bottom], 16)
                ) {
                    ForEach(suggestionTags) { tag in
                        SearchTagItem(suggestionTag: tag)
                    }
                }
                Section(header:
                    HStack {
                        Text("Popular Search")
                    }
                    .padding([.top, .bottom], 16)
                ) {
                    ForEach(suggestionJobs) { job in
                        SearchJobItem(suggestionJob: job)
                    }
                }
                Section(header:
                    HStack {
                        Text("Recent Searches")
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            Text("Clear All")
                                .foregroundColor(Color("DarkOrange"))
                        })
                    }
                    .padding([.top, .bottom], 16)
                ) {
                    ForEach(recentSearches) { search in
                        RecentSearchItem(recentSearch: search)
                    }
                }
                Section(header:
                    HStack {
                        Text("Categories")
                    }
                    .padding([.top, .bottom], 16)
                ) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(categorySearches) {category in
                                CategorySearchItem(category: category)
                            }
                        }
                    }
                }
            }
            .padding(.top, -10)
        }
        .ignoresSafeArea()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
