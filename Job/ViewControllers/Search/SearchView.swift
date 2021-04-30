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
    @State private var recentSearches = RecentSearchData.recentSearches
    @State private var categorySearches = CategorySearchData.categorySearches
    
    var body: some View {
        VStack {
            HStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("Which Type Job you looking for?", text: $searchText, onEditingChanged: { isEditing in
                        self.showCancelButton = true
                    }, onCommit: {
                        print("onCommit")
                    }).foregroundColor(.white)

                    Button(action: {
                        self.searchText = ""
                    }) {
                        Image(systemName: "xmark.circle.fill").opacity(searchText == "" ? 0 : 1)
                    }
                }
                .padding(EdgeInsets(top: 45, leading: 6, bottom: 10, trailing: 6))
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
            
            // Content data
            List {
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
        }
        .ignoresSafeArea()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

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

