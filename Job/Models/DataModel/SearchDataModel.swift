//
//  SearchDataModel.swift
//  Job
//
//  Created by SENGHORT on 4/30/21.
//

import SwiftUI

struct SearchSuggestionTagData: Identifiable, Codable {
    var id = UUID()
    var name: String? = ""
}

struct SearchSuggestionJobData: Identifiable, Codable {
    var id = UUID()
    var companyName: String? = ""
}

struct RecentSearchData: Identifiable, Codable {
    var id = UUID()
    var name: String? = ""
    
    
    static var recentSearches: [RecentSearchData] {
        return [
            RecentSearchData(name: "iOS Mobile"),
            RecentSearchData(name: "Senior Android"),
            RecentSearchData(name: "Networking"),
            RecentSearchData(name: "Finance"),
            RecentSearchData(name: "Sale Manager"),
            RecentSearchData(name: "Web Developer"),
            RecentSearchData(name: "IT Support"),
            RecentSearchData(name: "Accounting"),
        ]
    }
}

struct CategorySearchData: Identifiable, Codable {
    var id = UUID()
    var name: String? = ""
    
    static var categorySearches: [CategorySearchData] {
        return [
            CategorySearchData(name: "Accounting"),
            CategorySearchData(name: "Manufacturing"),
            CategorySearchData(name: "Resort/Casino"),
            CategorySearchData(name: "Sales"),
            CategorySearchData(name: "Human Resource"),
            CategorySearchData(name: "Finance"),
            CategorySearchData(name: "IT"),
            CategorySearchData(name: "QC/QA"),
            CategorySearchData(name: "Administration"),
            CategorySearchData(name: "Customer Service"),
            CategorySearchData(name: "Consultancy"),
            CategorySearchData(name: "Telecommunication"),
            CategorySearchData(name: "Travel Agent/Ticket Sales"),
        ]
    }
}


