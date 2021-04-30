//
//  SettingView.swift
//  Job
//
//  Created by SENGHORT on 4/29/21.
//

import SwiftUI

struct SettingView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var location = ""
    @State private var newJobAlert = true
    @State private var notificationAlert = true
    @State private var enableSecurity = false
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image(systemName: "moon.circle.fill")
                    .font(.system(size: 35))
                    .foregroundColor(Color("DarkOrange"))
            }
            .background(Color.clear)
            .padding()
            
            Form {
                Section(header:
                    HStack {
                        Text("Preferences")
                    }
                    .padding([.top, .bottom], 16)
                ) {
                    LanguageItem(title: "ភាសាខ្មែរ")
                }
                
                Section(header:
                    HStack {
                        Text("Notifications")
                    }
                    .padding([.top, .bottom], 16)
                ) {
                    NotificationSettingItem(title: "Enable New Job", isEnable: newJobAlert)
                    NotificationSettingItem(title: "Enable Notification", isEnable: notificationAlert)
                    NotificationSettingItem(title: "Enable Touch ID", isEnable: enableSecurity)
                }
                
                Section(header:
                    HStack {
                        Text("Let Us Help You")
                    }
                    .padding([.top, .bottom], 16)
                ) {
                    LetUsHelpYouItem(title: "Privacy Policy")
                    LetUsHelpYouItem(title: "Condition of Use")
                    LetUsHelpYouItem(title: "Feedback")
                }
            }
        }
        .ignoresSafeArea()
        .background(Color(.systemGroupedBackground))
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}

struct LanguageItem: View {
    @State var title: String = ""
    
    var body: some View {
        HStack {
            Image("khmer-flag")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 30, height: 30)
                .cornerRadius(15)
            
            Text(title)
                .fontWeight(.bold)
            
            Spacer()
            Image(systemName: "chevron.forward")
                .font(.system(size: 20))
                .foregroundColor(.gray)
        }
        .padding([.top, .bottom], 10)
    }
}

struct NotificationSettingItem: View {
    @State var title: String = ""
    @State var logo: String = ""
    @State var isEnable: Bool = false
    
    var body: some View {
        HStack {
            Toggle(isOn: $isEnable,
                   label: {
                    Image(systemName: logo)
                    Text(title)
                        .fontWeight(.regular)
            })
        }
        .toggleStyle(SwitchToggleStyle(tint: Color("DarkOrange")))
        .padding([.top, .bottom], 10)
    }
}

struct LetUsHelpYouItem: View {
    @State var title: String = ""
    
    var body: some View {
        HStack {
            Text(title)
                .fontWeight(.regular)
            
            Spacer()
            Image(systemName: "chevron.forward")
                .font(.system(size: 20))
                .foregroundColor(.gray)
        }
        .padding([.top, .bottom], 10)
    }
}
