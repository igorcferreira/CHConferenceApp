//
//  PastVideosViewSection.swift
//  NSBrazilConf
//
//  Created by Douglas Alexandre Barros Taquary on 23/10/19.
//  Copyright © 2019 Cocoaheadsbr. All rights reserved.
//

import SwiftUI

struct PastVideosViewSection: View {
    var pastVideos: [Video] = []
    
    @State var showContent = false
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 24) {
                ForEach(pastVideos) { item in
                    Button(action: { self.showContent.toggle() }) {
                        GeometryReader { geometry in
                            PastEditionCardView(
                                video: item
                            )
                            .rotation3DEffect(Angle(degrees: Double((geometry.frame(in: .global).minX - 40) / -30)), axis: (x: 0, y: 10, z: 0))
                            .sheet(isPresented: self.$showContent) { VideoView() }
                        }
                        .frame(width: 246, height: 360)
                    }
                }
            }
            .padding(24)
        }
        .frame(height: 416)
        .padding()
    }
}


struct PastVideosViewSection_Previews: PreviewProvider {

    static var previews: some View {
        PastVideosViewSection(pastVideos: [Video(title: "GraphQL no iOS na Prática", speaker: "Felipe Lefèvre Marino", background: URL(string: "https://google.com")!, link: URL(string: "https://www.cocoaheads.com.br/videos/detalhes/20")!)])
    }
}

