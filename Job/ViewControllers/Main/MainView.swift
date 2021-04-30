//
//  MainView.swift
//  Job
//
//  Created by SENGHORT on 4/29/21.
//

import SwiftUI

struct MainView: View {
    @StateObject var router = JobRouter()
    
    var body: some View {
        TabBarView(router: router)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
