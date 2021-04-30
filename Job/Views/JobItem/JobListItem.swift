//
//  JobListItem.swift
//  Job
//
//  Created by SENGHORT on 4/29/21.
//

import SwiftUI

struct JobListItem: View {
    @State var job = DataJobModel()
    
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            HStack {
                Image(job.companyLogoUrl ?? "")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        // Hong Leng Huor Co., Ltd
                        Text(job.companyName ?? "")
                            .font(.title3)
                            .foregroundColor(.gray)
                        Spacer()
                        HStack {
                            ForEach(job.jobTerm) { term in
                                Text(term.name ?? "")
                                    .font(.system(size: 12))
                                    .padding(.all, 10)
                                    .border(Color(term.color ?? "").opacity(0.1))
                                    .background(Color(term.color ?? "").opacity(0.3))
                                    .cornerRadius(15)
                            }
                        }
                    }
                    Text(job.position ?? "")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color("DarkOrange"))
                    HStack {
                        Text(job.rangeSalary ?? "") //"$1,200 ~ $1,700"
                            .font(.title3)
                            .fontWeight(.semibold)
                        Spacer()
                        Text(unitDay(job.publishDate ?? "") + "d")
                            .foregroundColor(Color.gray)
                    }
                }
            }
            .padding(.bottom, 20)
            
            HStack {
                Button(action: {
                    
                }, label: {
                    Text("Apply Now")
                        .font(.system(size: 15))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .padding([.leading, .trailing], 30)
                })
                .padding(.all, 16)
                .background(Color("DarkOrange"))
                .cornerRadius(30)
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: job.isBookmark! ? "bookmark.fill" : "bookmark")
                        .font(.title)
                        .foregroundColor(job.isBookmark! ? Color("DarkOrange") : .gray)
                        .padding([.leading, .trailing], 2)
                        
                })
                .padding(.all, 8)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(35)
            }
        }
    }
    
    private func unitDay(_ startDate: String) -> String {
        let calendar = Calendar.current
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd'-'MM'-'yyyy"
        let date = dateFormatter.date(from: startDate)!

        let date1 = calendar.startOfDay(for: currentDate)
        let date2 = calendar.startOfDay(for: date)
        // Compute difference in days:
        let days = calendar.dateComponents([.day], from: date1, to: date2)
        
        return "\(abs(days.day ?? 1))"
    }
}

struct JobListItem_Previews: PreviewProvider {
    static var previews: some View {
        JobListItem()
    }
}
