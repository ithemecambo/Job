//
//  HomeHeaderView.swift
//  Job
//
//  Created by SENGHORT on 4/30/21.
//

import SwiftUI

struct HomeHeaderView: View {
    //@EnvironmentObject var homeData: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Hello, Shamin")
                        .font(.title2)
                    
                    HStack {
                        Image(systemName: "location")
                            .foregroundColor(.gray)
                        Text("#9, street 371, PP")
                            .foregroundColor(.gray)
                    }
                }
                Spacer()
                Button(action: {
                    
                }, label: {
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 30))
                })
                .padding(.trailing, 10)
                Image("alex_profile")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 40)
                    .cornerRadius(20)
            }
            // Suggestion Job Categories
            ScrollViewReader { reader in
                VStack(alignment: .leading) {
                    Text("Suggestion Job Categories")
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            Text("Accounting (129)")
                                .padding()
                                .overlay(RoundedRectangle(cornerRadius: 25)
                                         .stroke(Color("DarkOrange"), lineWidth: 1))
                            Text("Manufacturing (44)")
                                .padding()
                                .overlay(RoundedRectangle(cornerRadius: 25)
                                         .stroke(Color("DarkOrange"), lineWidth: 1))
                            Text("Resort/Casino (3)")
                                .padding()
                                .overlay(RoundedRectangle(cornerRadius: 25)
                                         .stroke(Color("DarkOrange"), lineWidth: 1))
                            Text("Sales (246)")
                                .padding()
                                .overlay(RoundedRectangle(cornerRadius: 25)
                                         .stroke(Color("DarkOrange"), lineWidth: 1))
                            Text("Human Resource (50)")
                                .padding()
                                .overlay(RoundedRectangle(cornerRadius: 25)
                                         .stroke(Color("DarkOrange"), lineWidth: 1))
                            Text("IT (152)")
                                .padding()
                                .overlay(RoundedRectangle(cornerRadius: 25)
                                         .stroke(Color("DarkOrange"), lineWidth: 1))
                            Text("Finance (36)")
                                .padding()
                                .overlay(RoundedRectangle(cornerRadius: 25)
                                         .stroke(Color("DarkOrange"), lineWidth: 1))
                        }
                    }
                }
            }
        } //UIApplication.shared.windows.first?.safeAreaInsets.top == 0 ? 15 : (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 5
        .frame(height: 100)
        .padding(.horizontal)
        .padding(.bottom)
        .ignoresSafeArea(.all, edges: .top)
        .background(Color("DarkOrange"))
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
    }
}
