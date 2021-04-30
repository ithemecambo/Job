//
//  EducationItem.swift
//  Job
//
//  Created by SENGHORT on 4/30/21.
//

import SwiftUI

struct EducationItem: View {
    @State var education: EducationData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack(spacing: 16) {
                Image(education.schoolLogoUrl ?? "")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .cornerRadius(35)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(education.schoolName ?? "")
                        .font(.title3)
                        .fontWeight(.bold)
                        .lineLimit(2)
                    Text(education.level ?? "")
                        .font(.title3)
                        .lineLimit(2)
                    Text(education.joinDate ?? "")
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
