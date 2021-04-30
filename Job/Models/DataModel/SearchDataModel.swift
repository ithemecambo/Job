//
//  SearchDataModel.swift
//  Job
//
//  Created by SENGHORT on 4/30/21.
//

import SwiftUI

struct SuggestionSearchTagData: Identifiable, Codable {
    var id = UUID()
    var name: String? = ""
    var count: String? = ""
    
    static var suggestionSearchTags: [SuggestionSearchTagData] {
        return [
            SuggestionSearchTagData(name: "Python Developer", count: "4"),
            SuggestionSearchTagData(name: "Cisco Enginer", count: "13"),
            SuggestionSearchTagData(name: "iOS Developer", count: "37"),
            SuggestionSearchTagData(name: "IT Support", count: "53"),
            SuggestionSearchTagData(name: "Accounting", count: "100"),
            SuggestionSearchTagData(name: "Android Developer", count: "73"),
            SuggestionSearchTagData(name: "Web Developer", count: "38")
        ]
    }
}

struct SuggestionSearchJobData: Identifiable, Codable {
    var id = UUID()
    var companyName: String? = ""
    var companyLogoUrl: String? = ""
    var position: String? = ""
    
    static var suggestionSearchJobs: [SuggestionSearchJobData] {
        return [
            SuggestionSearchJobData(companyName: "Mayura",
                         companyLogoUrl: "logo_mayura_trusted",
                         position: "Senior UX/UI Designer"),
            SuggestionSearchJobData(companyName: "Accenture",
                         companyLogoUrl: "accenture",
                         position: "Accountance"),
            SuggestionSearchJobData(companyName: "All Web",
                         companyLogoUrl: "all-web",
                         position: "Web Developer"),
            SuggestionSearchJobData(companyName: "Bank Of America",
                         companyLogoUrl: "bank-of-america",
                         position: "Branch Manager"),
            SuggestionSearchJobData(companyName: "Best Buy",
                         companyLogoUrl: "best-buy",
                         position: "Driver"),
            SuggestionSearchJobData(companyName: "Booz Allen",
                         companyLogoUrl: "booz-allen",
                         position: "IT Enginer"),
        ]
    }
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


