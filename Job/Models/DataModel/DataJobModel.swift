//
//  DataJobModel.swift
//  Job
//
//  Created by SENGHORT on 4/29/21.
//

import SwiftUI
import Foundation

struct DataJobModel: Identifiable, Codable {
    var id = UUID()
    var companyName: String?    = ""
    var companyLogoUrl: String? = ""
    var position: String?       = ""
    var jobTerm: [JobTerm]      = []
    var rangeSalary: String?    = ""
    var publishDate: String?    = ""
    var closingDate: String?    = ""
    var isBookmark: Bool?       = false
    
    static var jobs: [DataJobModel] {
        return [
            DataJobModel(companyName: "Mayura",
                         companyLogoUrl: "logo_mayura_trusted",
                         position: "Senior UX/UI Designer",
                         jobTerm: [JobTerm(name: "Full Time", color: "JobTermGreen"), JobTerm(name: "Remote", color: "JobTermBlue")],
                         rangeSalary: "$1,200 ~ $1,700",
                         publishDate: "01-04-2021",
                         closingDate: "30-04-2021",
                         isBookmark: true),
            DataJobModel(companyName: "Accenture",
                         companyLogoUrl: "accenture",
                         position: "Accountance",
                         jobTerm: [JobTerm(name: "Full Time", color: "JobTermGreen"), JobTerm(name: "Part Time", color: "JobTermGreen")],
                         rangeSalary: "Negotiate",
                         publishDate: "02-05-2021",
                         closingDate: "27-07-2021",
                         isBookmark: true),
            DataJobModel(companyName: "All Web",
                         companyLogoUrl: "all-web",
                         position: "Web Developer",
                         jobTerm: [JobTerm(name: "Full Time", color: "JobTermGreen"), JobTerm(name: "Remote", color: "JobTermBlue")],
                         rangeSalary: "$350 ~ $700",
                         publishDate: "16-04-2021",
                         closingDate: "20-06-2021"),
            DataJobModel(companyName: "Bank Of America",
                         companyLogoUrl: "bank-of-america",
                         position: "Branch Manager",
                         jobTerm: [JobTerm(name: "Full Time", color: "JobTermGreen")],
                         rangeSalary: "$3,000 ~ $5,000",
                         publishDate: "11-05-2021",
                         closingDate: "30-07-2021",
                         isBookmark: true),
            DataJobModel(companyName: "Best Buy",
                         companyLogoUrl: "best-buy",
                         position: "Driver",
                         jobTerm: [JobTerm(name: "Full Time", color: "JobTermGreen"), JobTerm(name: "Remote", color: "JobTermBlue")],
                         rangeSalary: "Negotiate",
                         publishDate: "19-04-2021",
                         closingDate: "30-07-2021"),
            DataJobModel(companyName: "Booz Allen",
                         companyLogoUrl: "booz-allen",
                         position: "IT Enginer",
                         jobTerm: [JobTerm(name: "Full Time", color: "JobTermGreen")],
                         rangeSalary: "$3,000 ~ $5,000",
                         publishDate: "21-04-2021",
                         closingDate: "21-06-2021",
                         isBookmark: true),
            DataJobModel(companyName: "Cisco System",
                         companyLogoUrl: "cisco-systems",
                         position: "Administrator",
                         jobTerm: [JobTerm(name: "Full Time", color: "JobTermGreen")],
                         rangeSalary: "$4,000 ~ $7,500",
                         publishDate: "17-04-2021",
                         closingDate: "30-06-2021"),
            DataJobModel(companyName: "CVS Health",
                         companyLogoUrl: "cvs-health",
                         position: "Doctor",
                         jobTerm: [JobTerm(name: "Full Time", color: "JobTermGreen"), JobTerm(name: "Remote", color: "JobTermBlue")],
                         rangeSalary: "$2,500 ~ $4,000",
                         publishDate: "15-04-2021",
                         closingDate: "30-06-2021"),
            DataJobModel(companyName: "Kijiji",
                         companyLogoUrl: "kijiji",
                         position: "Web Developer",
                         jobTerm: [JobTerm(name: "Full Time", color: "JobTermGreen")],
                         rangeSalary: "$500 ~ $900",
                         publishDate: "12-04-2021",
                         closingDate: "30-06-2021",
                         isBookmark: true),
            DataJobModel(companyName: "Lockheed Martin",
                         companyLogoUrl: "lockheed-martin",
                         position: "Sale Manager",
                         jobTerm: [JobTerm(name: "Full Time", color: "JobTermGreen")],
                         rangeSalary: "Negotiate",
                         publishDate: "020-04-2021",
                         closingDate: "20-05-2021"),
            DataJobModel(companyName: "Nordstrom",
                         companyLogoUrl: "nordstrom",
                         position: "Android Developer",
                         jobTerm: [JobTerm(name: "Full Time", color: "JobTermGreen"), JobTerm(name: "Remote", color: "JobTermBlue")],
                         rangeSalary: "$1,400 ~ $2,500",
                         publishDate: "02-04-2021",
                         closingDate: "30-05-2021",
                         isBookmark: true),
            DataJobModel(companyName: "Pathway",
                         companyLogoUrl: "pathway",
                         position: "Poster Designer",
                         jobTerm: [JobTerm(name: "Full Time", color: "JobTermGreen")],
                         rangeSalary: "$300 ~ $700",
                         publishDate: "10-04-2021",
                         closingDate: "20-06-2021"),
            DataJobModel(companyName: "Starbucks",
                         companyLogoUrl: "starbucks",
                         position: "IT Office",
                         jobTerm: [JobTerm(name: "Full Time", color: "JobTermGreen")],
                         rangeSalary: "$400 ~ $700",
                         publishDate: "09-04-2021",
                         closingDate: "30-06-2021",
                         isBookmark: true),
            DataJobModel(companyName: "T-Mobile",
                         companyLogoUrl: "t-mobile",
                         position: "IT Manager",
                         jobTerm: [JobTerm(name: "Full Time", color: "JobTermGreen"), JobTerm(name: "Remote", color: "JobTermBlue")],
                         rangeSalary: "$3,500 ~ $5,000",
                         publishDate: "02-05-2021",
                         closingDate: "10-06-2021",
                         isBookmark: true),
            DataJobModel(companyName: "US Air Force",
                         companyLogoUrl: "us-air-force",
                         position: "Full Stack Developer",
                         jobTerm: [JobTerm(name: "Full Time", color: "JobTermGreen")],
                         rangeSalary: "Negotiate",
                         publishDate: "15-04-2021",
                         closingDate: "30-05-2021"),
            DataJobModel(companyName: "Verizon",
                         companyLogoUrl: "verizon",
                         position: "Senior iOS Developer",
                         jobTerm: [JobTerm(name: "Full Time", color: "JobTermGreen"), JobTerm(name: "Remote", color: "JobTermBlue")],
                         rangeSalary: "$2,500 ~ $3,500",
                         publishDate: "05-03-2021",
                         closingDate: "30-05-2021"),
        ]
    }
    
    static var bookmarkList: [DataJobModel] {
        let results = jobs.filter { $0.isBookmark == true }
        return results
    }
}

struct JobTerm: Identifiable, Codable {
    var id = UUID()
    var name: String?   = ""
    var color: String?  = ""
}

class Jobs: ObservableObject {
    
    @Published var items = DataJobModel.jobs
}
