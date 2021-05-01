//
//  FilterDataModel.swift
//  Job
//
//  Created by SENGHORT on 5/1/21.
//

import Foundation

struct FilterLevelDataModel: Identifiable, Codable {
    var id = UUID()
    var name: String? = ""
    
    static var levels: [FilterLevelDataModel] {
        return [
            FilterLevelDataModel(name: "Senior"),
            FilterLevelDataModel(name: "Middle")
        ]
    }
}

struct FilterTermJobDataModel: Identifiable, Codable {
    var id = UUID()
    var name: String? = ""
}

struct FilterSalaryDataModel: Identifiable, Codable {
    var id = UUID()
}

