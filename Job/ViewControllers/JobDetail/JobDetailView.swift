//
//  JobDetailView.swift
//  Job
//
//  Created by SENGHORT on 4/30/21.
//

import SwiftUI

struct JobDetailView: View {
    
    var body: some View {
        VStack {
            Button(action: {
                
            }) {
                Text("Pop")
            }
        }
    }
}

struct JobDetailView_Previews: PreviewProvider {
    static var previews: some View {
        JobDetailView()
    }
}

struct DetailView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        Button(
            "Here is Detail View. Tap to go back.",
            action: { self.presentationMode.wrappedValue.dismiss() }
        )
    }
}

struct RootView: View {
    var body: some View {
        VStack {
            NavigationLink(destination: DetailView())
            {
                Text("I am Root. Tap for Detail View.")
                    
                
            }
        }
    }
}

struct DemoView: View {
    var body: some View {
        NavigationView {
            RootView()
        }
    }
}
