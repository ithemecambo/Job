//
//  AccountView.swift
//  Job
//
//  Created by SENGHORT on 4/29/21.
//

import SwiftUI

struct AccountView: View {
    @State private var workExperiences = WorkExperiencData.workExperiences
    @State private var educatons = EducationData.educations
    @State private var settingSheet: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    // Banner
                    VStack(alignment: .leading) {
                        ZStack {
                            Image("cover")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: _width)
                            
                            Image("alex_profile")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .cornerRadius(50)
                                .padding(.top, 150)
                        }
                        .padding(.top, 0)
                    }
                    // Bio
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Bio")
                                .font(.title2)
                                .fontWeight(.bold)
                            Spacer()
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "square.and.pencil")
                                    .font(.system(size: 25))
                            })
                        }
                        BioItem()
                    }
                    .padding()
                    
                    // Work Experience
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Work Experience")
                                .font(.title2)
                                .fontWeight(.bold)
                            Spacer()
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "square.and.pencil")
                                    .font(.system(size: 25))
                            })
                        }
                        VStack(alignment: .leading) {
                            ForEach(workExperiences) { workExperience in
                                WorkExperienceItem(work: workExperience)
                            }
                        }
                    }
                    .padding()
                    
                    // Education
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Education")
                                .font(.title2)
                                .fontWeight(.bold)
                            Spacer()
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "square.and.pencil")
                                    .font(.system(size: 25))
                            })
                        }
                        VStack(alignment: .leading) {
                            ForEach(educatons) { education in
                                EducationItem(education: education)
                            }
                        }
                    }
                    .padding()
                }
                .padding(.top, 0)
                .padding(.bottom, 0)
            }
            .ignoresSafeArea()
            .navigationBarItems(trailing:
                Button(action: {
                    settingSheet.toggle()
                }) {
                    Image(systemName: "gearshape.fill")
                        .font(.system(size: 25))
                        .foregroundColor(Color("DarkOrange"))
                }
                .sheet(isPresented: $settingSheet) {
                    SettingView()
                }
            )
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarColor(.clear)
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
