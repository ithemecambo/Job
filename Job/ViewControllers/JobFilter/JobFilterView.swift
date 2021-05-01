//
//  JobFilterView.swift
//  Job
//
//  Created by SENGHORT on 4/30/21.
//

import SwiftUI

struct JobFilterView: View {
    @State private var data = ["Accounting", "Networking", "Finace", "Banking", "IT Program", "Enginer"]
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView(.vertical, showsIndicators: false) {
                // Level
                VStack(alignment: .leading, spacing: 10) {
                    Text("Level")
                        .font(.title2)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<data.count) { index in
                                if index == 0 {
                                    FilterLevelItem(name: data[index])
                                        .foregroundColor(.white)
                                        .background(Color("DarkOrange"))
                                        .cornerRadius(40)
                                } else {
                                    FilterLevelItem(name: data[index])
                                        .background(Color.secondary.opacity(0.2))
                                        .cornerRadius(40)
                                }
                            }
                        }
                    }
                }
                
                // Term Job
                VStack(alignment: .leading, spacing: 10) {
                    Text("Term Job")
                        .font(.title2)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<data.count) { index in
                                if index == 0 {
                                    FilterLevelItem(name: data[index])
                                        .foregroundColor(.white)
                                        .background(Color("DarkOrange"))
                                        .cornerRadius(40)
                                } else {
                                    FilterLevelItem(name: data[index])
                                        .background(Color.secondary.opacity(0.2))
                                        .cornerRadius(40)
                                }
                            }
                        }
                    }
                }
                
                // Custom more by here
            }
        }
    }
}

struct JobFilterView_Previews: PreviewProvider {
    static var previews: some View {
        JobFilterView()
    }
}

struct FilterLevelItem: View {
    @State var name: String = ""
    
    var body: some View {
        HStack {
            Text(name)
                .font(.system(size: 15))
                .foregroundColor(.black)
        }
        .padding()
    }
}
