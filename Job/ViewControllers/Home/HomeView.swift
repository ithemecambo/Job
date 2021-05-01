//
//  HomeView.swift
//  Job
//
//  Created by SENGHORT on 4/29/21.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText = ""
    @State private var showDetail = false
    @State private var showCancelButton: Bool = false
    @State private var jobs = DataJobModel.jobs
    //@EnvironmentObject private var navigation: Navigation
    
    var body: some View {
        VStack {
            // Profile
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Hello, Shamin Carlos")
                        .font(.title2)
                        .fontWeight(.semibold)
                    HStack {
                        Image(systemName: "location")
                            .foregroundColor(.gray)
                        Text("#9, street 371, PP")
                            .foregroundColor(.gray)
                    }
                }
                Spacer()
                Image("alex_profile")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
            }
            .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 25) {
                    // Search
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("Which Type Job you looking for?", text: $searchText, onEditingChanged: { isEditing in
                            self.showCancelButton = true
                        }, onCommit: {
                            print("onCommit")
                        }).foregroundColor(.primary)

                        Button(action: {
                            self.searchText = ""
                        }) {
                            Image(systemName: "xmark.circle.fill").opacity(searchText == "" ? 0 : 1)
                        }
                    }
                    .padding(EdgeInsets(top: 10, leading: 6, bottom: 10, trailing: 6))
                    .foregroundColor(.secondary)
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(5)
                    
                    // Suggestion Job Categories
                    VStack(alignment: .leading) {
                        Text("Suggestion Job Categories")
                            .font(.title2)
                            .fontWeight(.bold)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                Text("Accounting (129)")
                                    .padding()
                                    .overlay(RoundedRectangle(cornerRadius: 25)
                                             .stroke(Color("DarkOrange"), lineWidth: 1))
                                Text("Manufacturing (44)")
                                    .padding()
                                    .overlay(RoundedRectangle(cornerRadius: 25)
                                             .stroke(Color("DarkOrange"), lineWidth: 1))
                                Text("Resort/Casino (3)")
                                    .padding()
                                    .overlay(RoundedRectangle(cornerRadius: 25)
                                             .stroke(Color("DarkOrange"), lineWidth: 1))
                                Text("Sales (246)")
                                    .padding()
                                    .overlay(RoundedRectangle(cornerRadius: 25)
                                             .stroke(Color("DarkOrange"), lineWidth: 1))
                                Text("Human Resource (50)")
                                    .padding()
                                    .overlay(RoundedRectangle(cornerRadius: 25)
                                             .stroke(Color("DarkOrange"), lineWidth: 1))
                                Text("IT (152)")
                                    .padding()
                                    .overlay(RoundedRectangle(cornerRadius: 25)
                                             .stroke(Color("DarkOrange"), lineWidth: 1))
                                Text("Finance (36)")
                                    .padding()
                                    .overlay(RoundedRectangle(cornerRadius: 25)
                                             .stroke(Color("DarkOrange"), lineWidth: 1))
                            }
                        }
                    }
                    
                    // Recommended Jobs
                    VStack(alignment: .leading) {
                        Text("Recommended Jobs")
                            .font(.title2)
                            .fontWeight(.bold)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                // row
                                RecoJobListItem()
                                RecoJobListItem()
                                RecoJobListItem()
                                RecoJobListItem()
                                RecoJobListItem()
                                RecoJobListItem()
                            }
                        }
                    }
                    
                    // Job Lists
                    VStack(alignment: .leading) {
                        ForEach(jobs) { job in
                            NavigationLink(destination: JobDetailView()) {
                                JobListItem(job: job)
                                    .padding()
                                    .overlay(RoundedRectangle(cornerRadius: 10.0)
                                                .stroke(Color("DarkOrange"), lineWidth: 1)
                                    )
                            }
                        }
                    }
                    .padding(.top, 20)
                    
                }
                .padding()
            }
            .padding(.top, -20)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
