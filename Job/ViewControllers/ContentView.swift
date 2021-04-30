//
//  ContentView.swift
//  Job
//
//  Created by SENGHORT on 4/29/21.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    @State private var isShow: Bool = false
    @State private var showCancelButton: Bool = false
    @State private var jobs = DataJobModel.jobs
    @StateObject private var homeData = HomeViewModel()
    @State private var timer = Timer.publish(every: 0.1, on: .current, in: .tracking).autoconnect()
    
    var body: some View {
        ZStack(alignment: .top, content: {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 25) {
                    // Sticky Header
                    GeometryReader { reader in
                        // Profile
                        HStack {
                            VStack(alignment: .leading, spacing: 5) {
                                Text("Hello, Shamin")
                                    .font(.title2)
                                
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
                        .offset(y: reader.frame(in: .global).minY > 0 ? -reader.frame(in: .global).minY : 0)
                        .frame(height: reader.frame(in: .global).minY > 0 ? 40 + reader.frame(in: .global).minY : 40)
                        .onReceive(self.timer) { (_) in
                            let y = reader.frame(in: .global).minY
                            if -y > (_height / 2.2) - 150 {
                                withAnimation {
                                    self.isShow = true
                                }
                            } else {
                                withAnimation {
                                    self.isShow = false
                                }
                            }
                        }
                    }
                    .padding(.top, 100)
                    .padding(.bottom, 35)
                    .frame(height: 40)
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
                            JobListItem(job: job)
                                .padding()
                                .overlay(RoundedRectangle(cornerRadius: 10.0)
                                            .stroke(Color("DarkOrange"), lineWidth: 1)
                                )
                        }
                    }
                    .padding(.top, 20)
                    
                }
                .padding()
            }
            if self.isShow {
                HomeHeaderView()
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
