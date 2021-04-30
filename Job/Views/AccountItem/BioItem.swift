//
//  BioItem.swift
//  Job
//
//  Created by SENGHORT on 4/30/21.
//

import SwiftUI

struct BioItem: View {
    var body: some View {
        HStack {
            Text("Writing a short bio is an important part of introducing yourself to potential employers, clients or contacts. Your short bio has the potential to help you make positive impressions that can impact your professional development and success. If you are interested in learning to write effective short bios, you will need to know what to include and what a successful short bio looks like. In this article, we discuss the purpose of a short bio, review steps on how to write one and look at some short bio examples. \n\nWriting a short bio is similar to writing a resume in that you will want to highlight your professional accomplishments. However, you will need to describe them in a way that any reader can understand. Instead of describing yourself as a Carthage award-winning graphic artist, you might write that you are a multi-talented graphic artist who won the 2019 Carthage Award for artistic excellence and innovation. Even if your reader is not familiar with your specific industry's awards, they will likely respond well to positive keywords like innovation. \n\nYou most likely will not have room to list all past accomplishments, so it is important to choose which ones to highlight. Focus on awards or recognitions that relate to a variety of professional skills or that speak to your proficiency and competence.")
                .font(.caption)
                .foregroundColor(.primary)
        }
        .padding([.top, .bottom], 16)
    }
}

struct BioItem_Previews: PreviewProvider {
    static var previews: some View {
        BioItem()
    }
}
