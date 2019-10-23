//
//  PastEditionCardView.swift
//  NSBrazilConf
//
//  Created by Douglas Alexandre Barros Taquary on 23/10/19.
//  Copyright © 2019 Cocoaheadsbr. All rights reserved.
//

import SwiftUI

struct PastEditionCardView: View {
    let video: Video
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(video.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .padding(30)
                .lineLimit(6)
                .frame(width: 240)
            Text(video.speaker)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .padding(.leading, 30)
                .padding(.top, -16)
                .lineLimit(1)
            Spacer()
            Image("Illustration1")
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 246, height: 140)
                .padding(.bottom, 8)
        }
        .background(Color("background10"))
        .cornerRadius(30)
        .frame(width: 246, height: 360)
        .shadow(color: Color.gray.opacity(0.5), radius: 10, x: 0, y: 0)
    }
}

struct PastEditionCardView_Previews: PreviewProvider {

    static var previews: some View {
        PastEditionCardView(video: Video(title: "GraphQL no iOS na Prática", speaker: "Felipe Lefèvre Marino", background: URL(string: "https://google.com")!, link: URL(string: "https://www.cocoaheads.com.br/videos/detalhes/20")!))
    }
}
