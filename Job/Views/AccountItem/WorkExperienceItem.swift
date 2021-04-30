//
//  WorkExperienceItem.swift
//  Job
//
//  Created by SENGHORT on 4/30/21.
//

import SwiftUI

struct WorkExperienceItem: View {
    @State var work: WorkExperiencData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack(spacing: 16) {
                Image(work.companyLogoUrl ?? "")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .cornerRadius(25)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(work.position ?? "")
                        .font(.title3)
                        .fontWeight(.bold)
                        .lineLimit(2)
                    Text(work.companyName ?? "")
                        .font(.title3)
                        .lineLimit(2)
                    Text(work.joinDate ?? "")
                        .font(.caption)
                        .foregroundColor(.gray)
                    Divider()
                        .padding(.top, 16)
                        .padding(.trailing, -100)
                }
            }
        }
        .padding(.bottom, 5)
    }
}
