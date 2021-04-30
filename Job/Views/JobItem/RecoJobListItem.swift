//
//  RecoJobListItem.swift
//  Job
//
//  Created by SENGHORT on 4/30/21.
//

import SwiftUI

struct RecoJobListItem: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("pathway")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .cornerRadius(35)
                VStack(alignment: .leading, spacing: 5) {
                    Text("T-Mobile")
                        .font(.title3)
                        .foregroundColor(.gray)
                    Text("Senior iOS Developer")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color("DarkOrange"))
                }
            }
            Text("$2,000 ~ $4,500")
                .font(.title3)
                .fontWeight(.semibold)
            HStack {
                Text("Full Time")
                    .font(.system(size: 12))
                    .padding(.all, 10)
                    .border(Color.green.opacity(0.1))
                    .background(Color.green.opacity(0.3))
                    .cornerRadius(15)
                Text("Remote")
                    .font(.system(size: 12))
                    .padding(.all, 10)
                    .border(Color.blue.opacity(0.1))
                    .background(Color.blue.opacity(0.3))
                    .cornerRadius(15)
                Spacer()
                Button(action: {
                    
                }, label: {
                    Image(systemName: "bookmark.fill")
                        .font(.title)
                        .foregroundColor(Color("DarkOrange"))
                        .padding([.leading, .trailing], 2)
                        
                })
                .padding(.all, 8)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(35)
            }
        }
        .padding()
        .overlay(RoundedRectangle(cornerRadius: 10.0)
                    .stroke(Color("DarkOrange"), lineWidth: 1)
        )
    }
}

struct RecoJobListItem_Previews: PreviewProvider {
    static var previews: some View {
        RecoJobListItem()
    }
}
