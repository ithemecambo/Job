//
//  TabBarView.swift
//  Job
//
//  Created by SENGHORT on 4/29/21.
//

import SwiftUI

struct TabBarView: View {
    @StateObject var router: JobRouter
    @State var showPopUp = false
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                // Spacer()
                switch router.currentPage {
                case .home:
                    HomeView()
                case .search:
                    SearchView()
                case .bookmark:
                    BookMarkView()
                case .account:
                    AccountView()
                }
                Spacer()
                
                ZStack {
                    if showPopUp {
                        PlusMenu(widthAndHeight: geometry.size.width/7)
                                                    .offset(y: -geometry.size.height/6)
                    }
                    
                    HStack {
                        TabBarIcon(router: router, assignPage: .home, width: geometry.size.width/5, height: geometry.size.height/28, iconName: "house", title: "Home")
                        TabBarIcon(router: router, assignPage: .search, width: geometry.size.width/5, height: geometry.size.height/28, iconName: "magnifyingglass", title: "Search")
                                                
                        ZStack {
                            Circle()
                                .foregroundColor(.white)
                                .frame(width: geometry.size.width/7, height: geometry.size.width/7)
                                .shadow(radius: 4)
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: geometry.size.width/7-6 , height: geometry.size.width/7-6)
                                .foregroundColor(Color("DarkOrange"))
                                .rotationEffect(Angle(degrees: showPopUp ? 90 : 0))
                        }
                        .offset(y: -geometry.size.height/8/2)
                        .onTapGesture {
                            withAnimation { showPopUp.toggle() }
                        }
                        
                        TabBarIcon(router: router, assignPage: .bookmark, width: geometry.size.width/5, height: geometry.size.height/28, iconName: "bookmark.fill", title: "Bookmark")
                        TabBarIcon(router: router, assignPage: .account, width: geometry.size.width/5, height: geometry.size.height/28, iconName: "person.crop.circle.fill", title: "Account")
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height/8)
                    .background(Color("TabBarBackground").shadow(radius: 2))
                }
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(router: JobRouter())
            .preferredColorScheme(.light)
    }
}

struct PlusMenu: View {
    
    let widthAndHeight: CGFloat
    
    var body: some View {
        HStack(spacing: 50) {
            ZStack {
                Circle()
                    .foregroundColor(Color("DarkOrange"))
                    .frame(width: widthAndHeight, height: widthAndHeight)
                    .onTapGesture {
                        print("Press Folder...")
                    }
                Image(systemName: "folder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(15)
                    .frame(width: widthAndHeight, height: widthAndHeight)
                    .foregroundColor(.white)
            }
            ZStack {
                Circle()
                    .foregroundColor(Color("DarkOrange"))
                    .frame(width: widthAndHeight, height: widthAndHeight)
                    .onTapGesture {
                        print("Press Paperclip")
                    }
                Image(systemName: "paperclip")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(15)
                    .frame(width: widthAndHeight, height: widthAndHeight)
                    .foregroundColor(.white)
            }
        }
        .transition(.scale)
    }
}

struct TabBarIcon: View {
    
    @StateObject var router: JobRouter
    let assignPage: JobPage
    let width: CGFloat
    let height: CGFloat
    let iconName: String
    let title: String

    var body: some View {
        VStack {
            Image(systemName: iconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .padding(.top, 10)
            
            Text(title)
                .font(.footnote)
            
            Spacer()
        }
        .padding(.horizontal, -4)
        .onTapGesture {
            router.currentPage = assignPage
        }
        .foregroundColor(router.currentPage == assignPage ? Color("DarkOrange") : .gray)
    }
}
