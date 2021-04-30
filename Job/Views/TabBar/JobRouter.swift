//
//  JobRouter.swift
//  Job
//
//  Created by SENGHORT on 4/29/21.
//

import SwiftUI

class JobRouter: ObservableObject {
    
    @Published var currentPage: JobPage = .home
    
}

enum JobPage {
    case home
    case search
    case bookmark
    case account
}
