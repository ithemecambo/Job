//
//  BookmarkView.swift
//  Job
//
//  Created by SENGHORT on 4/29/21.
//

import SwiftUI

struct BookmarkView: View {
    @State private var bookmarks = DataJobModel.bookmarkList
    
    var body: some View {
        NavigationView {
            HStack {
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(bookmarks) { job in
                        JobListItem(job: job)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 10.0)
                                        .stroke(Color("DarkOrange"), lineWidth: 1)
                            )
                    }
                }
                .padding()
            }
            .padding(.top, 0)
            .padding(.bottom, -5)
            .navigationBarTitle(Text("Bookmark"))
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarColor(Color("DarkOrange"))
        }
    }
}

struct BookmarkView_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkView()
    }
}
