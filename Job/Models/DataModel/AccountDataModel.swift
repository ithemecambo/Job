//
//  AccountDataModel.swift
//  Job
//
//  Created by SENGHORT on 4/30/21.
//

import SwiftUI

struct BioData: Identifiable, Codable {
    var id = UUID()
    var bio: String? = ""
}

struct WorkExperiencData: Identifiable, Codable {
    var id = UUID()
    var companyName: String? = ""
    var companyLogoUrl: String? = ""
    var position: String? = ""
    var joinDate: String? = ""
    
    static var workExperiences: [WorkExperiencData] {
        return [
            WorkExperiencData(companyName: "Leng Huor Co., Ltd",
                              companyLogoUrl: "logo_mayura_trusted",
                              position: "Senior iOS Developer",
                              joinDate: "01 Aug, 2020 ~ Present"),
            WorkExperiencData(companyName: "T-Mobile",
                              companyLogoUrl: "t-mobile",
                              position: "Senior iOS Developer",
                              joinDate: "01 Feb, 2019 ~ 02 Nov, 2020"),
            WorkExperiencData(companyName: "Booz Allen",
                              companyLogoUrl: "booz-allen",
                              position: "Senior iOS Developer",
                              joinDate: "01 Feb, 2019 ~ 02 Nov, 2020"),
            WorkExperiencData(companyName: "Cisco Systems",
                              companyLogoUrl: "cisco-systems",
                              position: "iOS Developer",
                              joinDate: "01 May, 2016 ~ 02 Nov, 2018"),
            WorkExperiencData(companyName: "Bank of America",
                              companyLogoUrl: "bank-of-america",
                              position: "Senior iOS Developer",
                              joinDate: "01 Apr, 2014 ~ 02 July, 2016"),
        ]
    }
}

struct EducationData: Identifiable, Codable {
    var id = UUID()
    var schoolName: String? = ""
    var schoolLogoUrl: String? = ""
    var level: String? = ""
    var joinDate: String? = ""
    
    static var educations: [EducationData] {
        return [
            EducationData(schoolName: "University of Minho",
                          schoolLogoUrl: "umiho-logo",
                          level: "Exchange Program (Erasmus)",
                          joinDate: "2017 ~ 2017"),
            EducationData(schoolName: "Royol University of Phnom Penh",
                          schoolLogoUrl: "rupp-logo",
                          level: "Master's Degress",
                          joinDate: "2015 ~ 2017"),
            EducationData(schoolName: "Royol University of Phnom Penh",
                          schoolLogoUrl: "rupp-logo",
                          level: "Bachelor's Degress",
                          joinDate: "2010 ~ 2014"),
            EducationData(schoolName: "Royol University of Phnom Penh",
                          schoolLogoUrl: "rupp-logo",
                          level: "Traning Course & Business Mobile App",
                          joinDate: "2014 ~ 2014"),
        ]
    }
}


