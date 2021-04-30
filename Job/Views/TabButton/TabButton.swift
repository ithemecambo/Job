//
//  TabButton.swift
//  Job
//
//  Created by SENGHORT on 4/29/21.
//

import SwiftUI

struct TabButton: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                Image(systemName: "house")
            })
            
            Button(action: {
                
            }, label: {
                Image(systemName: "magnifyingglass")
            })
            
            Button(action: {
                
            }, label: {
                Image(systemName: "bookmark.fill")
            })
            
            Button(action: {
                
            }, label: {
                Image(systemName: "person.crop.circle.fill")
            })
        }
    }
}

struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        TabButton()
    }
}
