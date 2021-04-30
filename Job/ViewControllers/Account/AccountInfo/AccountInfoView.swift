//
//  AccountInfoView.swift
//  Job
//
//  Created by SENGHORT on 4/30/21.
//

import SwiftUI

struct AccountInfoView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var location = ""
    @State private var termsAccepted = false
    @State private var age = 20
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("User Details")) {
                    TextField("Firstname",
                              text: $firstName)
                    TextField("Lastname",
                              text: $lastName)
                    Picker(selection: $location,
                           label: Text("Location")) {
                            ForEach(Location.allLocations, id: \.self) { location in
                                Text(location).tag(location)
                            }
                    }
                    
                    Toggle(isOn: $termsAccepted,
                           label: {
                            Text("Accept terms and conditions")
                    })
                    
                    Stepper(value: $age,
                            in: 18...100,
                            label: {
                        Text("Current age: \(self.age)")
                    })
                    
                    if self.isUserInformationValid() {
                        Button(action: {
                            print("Updated profile")
                        }, label: {
                            Text("Update Profile")
                        })
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarTitle(Text("Settings"))
            .navigationBarColor(.clear)
        }
    }
    
    private func isUserInformationValid() -> Bool {
        if firstName.isEmpty {
            return false
        }
        
        if lastName.isEmpty {
            return false
        }
        
        if !termsAccepted {
            return false
        }
        
        if location.isEmpty {
            return false
        }
        
        return true
    }
}

struct AccountInfoView_Previews: PreviewProvider {
    static var previews: some View {
        AccountInfoView()
    }
}


struct Location {
    static let allLocations = [
        "New York",
        "London",
        "Tokyo",
        "Berlin",
        "Paris"
    ]
}
